$data remove storage macro:engine events.$(event)
$tellraw @a[tag=macro.debug] {"text":"","extra":[{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"event/unregister ","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(event)","color":"aqua"}]}
