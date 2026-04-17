# ─────────────────────────────────────────────────────────────────
# macro:version
# Shows macroAPI version info to the calling player.
# Usage: /function macro:version
# ─────────────────────────────────────────────────────────────────

tellraw @s ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"━━━ Version Info ","color":"aqua"},{"text":"━━━━━━━━━━━━━━","color":"#555555"}]

tellraw @s ["",{"text":" ◈ ","color":"#00AAAA"},{"text":"macroAPI","color":"white","bold":true}]

execute if score ##macroAPI.pre #macroAPI.pre_version matches 1.. run tellraw @s ["",{"text":" ┃ ","color":"#555555"},{"text":"Version ","color":"gray"},{"text":"v","color":"#ffaa00"},{"score":{"name":"##macroAPI.major","objective":"#macroAPI.pre_version"},"color":"#ffaa00","bold":true},{"text":".","color":"#ffaa00"},{"score":{"name":"##macroAPI.minor","objective":"#macroAPI.pre_version"},"color":"#ffaa00","bold":true},{"text":".","color":"#ffaa00"},{"score":{"name":"##macroAPI.patch","objective":"#macroAPI.pre_version"},"color":"#ffaa00","bold":true},{"text":"-pre","color":"#ff8800"},{"score":{"name":"##macroAPI.pre","objective":"#macroAPI.pre_version"},"color":"#ff8800","bold":true}]
execute if score ##macroAPI.pre #macroAPI.pre_version matches ..0 run tellraw @s ["",{"text":" ┃ ","color":"#555555"},{"text":"Version ","color":"gray"},{"text":"v","color":"#ffaa00"},{"score":{"name":"##macroAPI.major","objective":"#macroAPI.pre_version"},"color":"#ffaa00","bold":true},{"text":".","color":"#ffaa00"},{"score":{"name":"##macroAPI.minor","objective":"#macroAPI.pre_version"},"color":"#ffaa00","bold":true},{"text":".","color":"#ffaa00"},{"score":{"name":"##macroAPI.patch","objective":"#macroAPI.pre_version"},"color":"#ffaa00","bold":true}]

tellraw @s ["",{"text":" ┃ ","color":"#555555"},{"text":"MC ","color":"gray"},{"text":"1.21.x","color":"#e3ff57"},{"text":" (pack_format 26–400000)","color":"#555555"}]
tellraw @s ["",{"text":" ┃ ","color":"#555555"},{"text":"Author ","color":"gray"},{"text":"runtoolkit","color":"#00ff33"},{"text":" / ","color":"#555555"},{"text":"runtoolkit","color":"aqua","underlined":true,"click_event":{"action":"open_url","url":"https://github.com/runtoolkit/macroAPI"}}]
tellraw @s ["",{"text":" ┃ ","color":"#555555"},{"text":"Source ","color":"gray"},{"text":"github.com/runtoolkit/macroAPI","color":"#5555ff","underlined":true,"click_event":{"action":"open_url","url":"https://github.com/runtoolkit/macroAPI"}}]

# Status: loaded or not
execute if score ##macroAPI.ver_set #macroAPI.pre_version matches 1 run tellraw @s ["",{"text":" ┃ ","color":"#555555"},{"text":"Status ","color":"gray"},{"text":"● loaded","color":"green"}]
execute unless score ##macroAPI.ver_set #macroAPI.pre_version matches 1 run tellraw @s ["",{"text":" ┃ ","color":"#555555"},{"text":"Status ","color":"gray"},{"text":"✖ not initialized","color":"red"}]

tellraw @s ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"#555555"}]
