$tag @e[type=$(type),tag=$(filter)] remove $(remove_tag)
$tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"entity/tag_remove ","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(type)","color":"aqua"}]
