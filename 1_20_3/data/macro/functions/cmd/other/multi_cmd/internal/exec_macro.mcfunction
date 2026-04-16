# ─────────────────────────────────────────────────────────────────
# macro:cmd/other/multi_cmd/internal/exec_macro [MACRO]
# INPUT: $(cmd)
# ─────────────────────────────────────────────────────────────────

execute unless entity @s[tag=macro.admin] run return 0

$$(cmd)
