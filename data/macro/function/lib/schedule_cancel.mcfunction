$data remove storage macro:engine schedules.$(key)
$tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"lib/schedule_cancel ","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(key)","color":"aqua"}]
