# ─────────────────────────────────────────────────────────────────
# macro:lib/once_per_player_reset
# Deletes the once_per_player record — function can run again.
#  Girdi : $(player), $(key)
# ─────────────────────────────────────────────────────────────────

$data remove storage macro:engine once_per_player.$(player).$(key)
$tellraw @a[tag=macro.debug] {"text":"","extra":[{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"lib/once_per_player_reset ","color":"aqua"},{"text":"$(player):$(key) reset","color":"yellow"}]}
