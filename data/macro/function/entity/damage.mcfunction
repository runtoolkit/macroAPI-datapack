$damage @e[type=$(type),tag=$(tag)] $(amount) $(damage_type)
$tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"entity/damage ","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(type)","color":"aqua"}]
