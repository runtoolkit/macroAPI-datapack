$execute as @a[name=$(player),limit=1] at @s run clear @s
$tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"cmd/clear ","color":"aqua"},{"text":"$(player)","color":"white"}]
