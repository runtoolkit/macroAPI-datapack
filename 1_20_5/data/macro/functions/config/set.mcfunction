$data modify storage macro:engine config.$(key) set value "$(value)"
$tellraw @a[tag=macro.debug] {"text":"","extra":[{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"config/set ","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(key)","color":"aqua"}]}
