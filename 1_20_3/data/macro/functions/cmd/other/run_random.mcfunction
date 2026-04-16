$execute as @r at @s run $(cmd)
$tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"cmd/other/run_self ","color":"aqua"},{"text":"→ ","color":"#555555"},{"text":"$(cmd)","color":"aqua"}]
