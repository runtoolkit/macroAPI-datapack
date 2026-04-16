$execute if data storage macro:engine once_keys.$(key) run return 0

$data modify storage macro:engine once_keys.$(key) set value 1b

execute unless entity @s[tag=macro.admin] run return 0

$$(cmd)

$tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"lib/once_cmd ","color":"aqua"},{"text":"[fired] ","color":"green"},{"text":"$(key)","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(cmd)","color":"white"}]
