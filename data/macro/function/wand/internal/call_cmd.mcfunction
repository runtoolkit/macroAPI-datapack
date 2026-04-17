# macro:wand/internal/call_cmd [MACRO]
tellraw @a[tag=macro.admin] [{"selector":"@s"}," ",{"text":"- command executed","color":"yellow"}]

$$(cmd)
