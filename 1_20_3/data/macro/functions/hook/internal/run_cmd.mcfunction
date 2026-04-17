# macro:hook/internal/run_cmd [MACRO]
# INPUT: $(cmd)
# @s = tetikleyen oyuncu

tellraw @a[tag=macro.admin] [{"selector":"@s"}," ",{"text":"- command executed","color":"yellow"}]

$$(cmd)
