# Load — entry point called from minecraft:load tag via macro:load
forceload add -30000000 1600

# Stage 1 debug
summon minecraft:marker ~ ~ ~ {Tags:["macro.stage1"],CustomName:'{"text":"macroAPI"}'}
execute as @e[type=minecraft:marker,tag=macro.stage1,limit=1] run say Starting #macroAPI...
execute as @e[type=minecraft:marker,tag=macro.stage1,limit=1] run kill @s

execute unless function ame_load:load/internal/validate run return 0

data modify storage macro:input level set value "macroAPI"
data modify storage macro:input message set value "Starting..."
data modify storage macro:input color set value "aqua"
function macro:log/add with storage macro:input {}

# Stage 2 debug
summon minecraft:marker ~ ~ ~ {Tags:["macro.stage2"],CustomName:'{"text":"macroAPI"}'}
execute as @e[type=minecraft:marker,tag=macro.stage2,limit=1] run say Loading scoreboards...
execute as @e[type=minecraft:marker,tag=macro.stage2,limit=1] run kill @s
function ame_load:load/scoreboards

# Stage 3 debug
summon minecraft:marker ~ ~ ~ {Tags:["macro.stage3"],CustomName:'{"text":"macroAPI"}'}
execute as @e[type=minecraft:marker,tag=macro.stage3,limit=1] run say Loading storages...
execute as @e[type=minecraft:marker,tag=macro.stage3,limit=1] run kill @s
function ame_load:load/storages

function ame_load:load/other

data modify storage macro:engine global.loaded set value 1b

function ame_load:load/internal/version_set

# Lantern Load integration — set pack version in load.status
# Format: (major * 10000) + (minor * 100) + patch
# Example: v2.2.6 = 20206
execute store result score #version_calc macro.tmp run scoreboard players get ##macroAPI.major #macroAPI.pre_version
scoreboard players operation #version_calc macro.tmp *= #10000 macro.tmp
execute store result score #temp macro.tmp run scoreboard players get ##macroAPI.minor #macroAPI.pre_version
scoreboard players operation #temp macro.tmp *= #100 macro.tmp
scoreboard players operation #version_calc macro.tmp += #temp macro.tmp
scoreboard players operation #version_calc macro.tmp += ##macroAPI.patch #macroAPI.pre_version
scoreboard players operation #macroAPI load.status = #version_calc macro.tmp

execute if score ##macroAPI.pre #macroAPI.pre_version matches 1.. run tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"Loaded. ","color":"green"},[{"text":"v","color":"aqua"},{"score":{"name":"##macroAPI.major","objective":"#macroAPI.pre_version"},"color":"aqua","bold":true},{"text":".","color":"aqua"},{"score":{"name":"##macroAPI.minor","objective":"#macroAPI.pre_version"},"color":"aqua","bold":true},{"text":".","color":"aqua"},{"score":{"name":"##macroAPI.patch","objective":"#macroAPI.pre_version"},"color":"aqua","bold":true},{"text":"-pre","color":"#ff8800"},{"score":{"name":"##macroAPI.pre","objective":"#macroAPI.pre_version"},"color":"#ff8800","bold":true}]]
execute if score ##macroAPI.pre #macroAPI.pre_version matches ..0 run tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"Loaded. ","color":"green"},[{"text":"v","color":"aqua"},{"score":{"name":"##macroAPI.major","objective":"#macroAPI.pre_version"},"color":"aqua","bold":true},{"text":".","color":"aqua"},{"score":{"name":"##macroAPI.minor","objective":"#macroAPI.pre_version"},"color":"aqua","bold":true},{"text":".","color":"aqua"},{"score":{"name":"##macroAPI.patch","objective":"#macroAPI.pre_version"},"color":"aqua","bold":true}]]

data modify storage macro:input level set value "macroAPI"
data modify storage macro:input message set value "Loaded."
data modify storage macro:input color set value "green"
function macro:log/add with storage macro:input {}

function ame_load:load/internal/finalize