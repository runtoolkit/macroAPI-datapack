$data modify storage $(storage) $(nbt) set $(actionType) $(value)
$tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"cmd/storage_set ","color":"aqua"},{"text":" → ","color":"#555555"},{"text":"$(value)","color":"aqua"}]
