# macro:tools/trigger/internal/exec_cmd
# Executes an arbitrary cmd string on behalf of a UUID-targeted player.
# type:"cmd" → data:{uuid:[I;...], cmd:"say hello"}
#
# SECURITY:
#   - Only macro.admin-tagged OR macro.trusted (UUID allowlist) executors may call this.
#   - Input must pass macro:tools/utils/input_check before reaching here.
#   - $(cmd) is passed directly to execute — treat all cmd strings as potentially hostile.
#   - The UUID target prevents @p exploitation: runs only on the specified player entity.
#
# IMPORTANT: This function should NOT be exposed to untrusted callers.
# The macro:tools/utils/check_all gate must be called before this function.

# Security: only macro.admin-tagged (or UUID-allowlisted) executors may run this.
execute unless entity @s[tag=macro.admin] unless score @s macro.trusted matches 1 run return 0

$execute as @a[nbt=$(uuid)] at @s run $(cmd)
