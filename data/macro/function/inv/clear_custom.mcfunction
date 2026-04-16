$execute as @a[name=$(player),limit=1] run clear @s *[minecraft:custom_data=$(customData)] $(count)
$tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"inv/clear_custom ","color":"aqua"},{"text":"$(player)","color":"white"}]
