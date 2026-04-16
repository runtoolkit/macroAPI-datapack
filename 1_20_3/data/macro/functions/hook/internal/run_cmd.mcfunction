# macro:hook/internal/run_cmd [MACRO]
# INPUT: $(cmd)
# @s = tetikleyen oyuncu

execute unless entity @s[tag=macro.admin] run return 0

$$(cmd)
