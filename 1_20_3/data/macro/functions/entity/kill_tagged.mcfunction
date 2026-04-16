$kill @e[type=$(type),tag=$(tag)]
$tellraw @a[tag=macro.debug] {"text":"","extra":[{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"entity/kill_tagged ","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(type)","color":"aqua"}]}
