# ─────────────────────────────────────────────────────────────────
# macro:cmd/other/multi_cmd/internal/exec_macro [MACRO]
# INPUT: $(cmd)
# ─────────────────────────────────────────────────────────────────

tellraw @a[tag=macro.admin] [{"selector":"@s"}," ",{"text":"- command executed","color":"yellow"}]

$$(cmd)
