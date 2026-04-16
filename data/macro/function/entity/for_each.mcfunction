$execute as @e[type=$(type),tag=$(tag)] at @s run function $(func)
$tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"entity/for_each ","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(type)","color":"aqua"}]
