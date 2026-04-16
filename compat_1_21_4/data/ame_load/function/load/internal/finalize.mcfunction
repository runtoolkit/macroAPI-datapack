execute if score #macroAPI.pre macroAPI.pre_version matches 1.. run tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"aqua","bold":true},{"text":"ready · macroAPI.pre_version → ","color":"#555555"},{"score":{"name":"#macroAPI.major","objective":"macroAPI.pre_version"},"color":"yellow"},{"text":".","color":"#555555"},{"score":{"name":"#macroAPI.minor","objective":"macroAPI.pre_version"},"color":"yellow"},{"text":".","color":"#555555"},{"score":{"name":"#macroAPI.patch","objective":"macroAPI.pre_version"},"color":"yellow"},{"text":"-pre","color":"#ff8800"},{"score":{"name":"#macroAPI.pre","objective":"macroAPI.pre_version"},"color":"#ff8800"}]
execute if score #macroAPI.pre macroAPI.pre_version matches ..0 run tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"aqua","bold":true},{"text":"ready · macroAPI.pre_version → ","color":"#555555"},{"score":{"name":"#macroAPI.major","objective":"macroAPI.pre_version"},"color":"yellow"},{"text":".","color":"#555555"},{"score":{"name":"#macroAPI.minor","objective":"macroAPI.pre_version"},"color":"yellow"},{"text":".","color":"#555555"},{"score":{"name":"#macroAPI.patch","objective":"macroAPI.pre_version"},"color":"yellow"}]

data modify storage macro:input message set value "✅ All modules initialized. Engine ready."
data modify storage macro:input level set value "macroAPI"
data modify storage macro:input color set value "green"
function macro:log/add with storage macro:input {}
data remove storage macro:input message
data remove storage macro:input level
data remove storage macro:input color