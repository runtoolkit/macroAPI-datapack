# macro:tools/utils/perm_check
# Access control gate for all tools/ API endpoints.
#
# AUTH MODES (either is sufficient — OR logic):
#   1) Entity tag:  /tag @s add macro.admin
#   2) UUID allowlist: macro:engine security.trusted_uuids (managed by macro:tools/admin/add)
#      Uses macro.trusted scoreboard — set on add, cleared on remove.
#
# SECURITY NOTES:
#   - macro.admin tag is per-entity and persists while the entity exists.
#   - macro.trusted scoreboard resets on /reload — re-run macro:tools/admin/add to restore.
#   - UUID allowlist in storage persists across reloads (survives world save).
#   - Both checks must fail for access to be denied.
#
# RETURNS: 1 on success, 0 (via return 0) on failure.
#
# See: macro:tools/admin/add  macro:tools/admin/remove  macro:tools/admin/list

# --- Primary auth: macro.admin entity tag ---
execute if entity @s[tag=macro.admin] run return 1

# --- Secondary auth: UUID allowlist via macro.trusted scoreboard ---
# macro.trusted is set to 1 by macro:tools/admin/add
# It resets on /reload — use macro:tools/admin/add to restore after reload
execute if score @s macro.trusted matches 1 run return 1

# --- Both checks failed: access denied ---
return 0
