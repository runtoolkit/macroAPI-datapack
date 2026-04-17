# ame_load:load/confirm
# macroAPI Load Confirmation Gate — Stage 0 dispatcher
# Execution context: minecraft:marker (spawned by ame_load:_)
#
# PURPOSE
# -------
# The minecraft:load tag fires on /reload AND on server/world open.
# If macro:engine storage already holds live data from a previous session
# (permission maps, flag tables, wand binds, etc.), overwriting it
# immediately causes nondeterministic state and silent data loss.
#
# This function sets a scoreboard-based pending flag, broadcasts the
# confirmation instructions to the server log via marker say (immune to
# the server-startup tellraw / clickEvent rendering bug), and schedules
# an automatic cancel after 5 minutes.
#
# NOTHING in macro:engine storage is touched here.
# Storage writes happen only after ame_load:load/yes is called.
#
# FLOW
# ----
#   ame_load:_ (stage0)
#     └─ ame_load:load/confirm   ← this file (runs as marker)
#         ├─ broadcasts instructions
#         └─ schedules ame_load:timeout (5m)
#
#   Admin: /function ame_load:load/yes
#     └─ ame_load:load/all → full init pipeline
#
#   Admin: /function ame_load:load/no
#     └─ abort — storage untouched
#
#   5 minutes elapse with no response:
#     └─ ame_load:timeout → ame_load:load/no (auto-abort)

# Create load-gate tracking objective
# Safe to call even if objective already exists (add is idempotent)
scoreboard objectives add #macroAPI.load dummy

# Reset any stale state from a previous incomplete gate cycle
scoreboard players set #pending #macroAPI.load 0
scoreboard players set #confirmed #macroAPI.load 0
scoreboard players set #cancelled #macroAPI.load 0

# Open the gate window
scoreboard players set #pending #macroAPI.load 1

# Broadcast via marker say — works at server start, no clickEvent, no players required
say [macroAPI GATE] ========================================
say [macroAPI GATE] macroAPI load is PENDING.
say [macroAPI GATE] Storage has NOT been modified yet.
say [macroAPI GATE] ----------------------------------------
say [macroAPI GATE] CONFIRM:  /function ame_load:load/yes
say [macroAPI GATE] CANCEL:   /function ame_load:load/no
say [macroAPI GATE] ----------------------------------------
say [macroAPI GATE] Auto-cancel fires in 5 minutes if no response.
say [macroAPI GATE] ========================================

# Schedule 5-minute auto-cancel
# 'replace' ensures repeated /reload does not stack multiple timeout schedules
schedule function ame_load:timeout 300s replace