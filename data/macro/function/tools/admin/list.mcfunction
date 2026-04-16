# macro:tools/admin/list
# Lists all current admin players (those with macro.admin tag or macro.trusted=1).
# Requires macro.admin or macro.trusted to call.

execute unless function macro:tools/utils/check_all run return 0

tellraw @s ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"━━━ Admin List ","color":"aqua"},{"text":"━━━━━━━━━━━━━━","color":"#555555"}]

# Show players with macro.admin tag
execute if entity @a[tag=macro.admin] run tellraw @s ["",{"text":" ◈ ","color":"#00AAAA"},{"text":"macro.admin tag: ","color":"gray"},{"selector":"@a[tag=macro.admin]","color":"white"}]
execute unless entity @a[tag=macro.admin] run tellraw @s ["",{"text":" ","color":"#555555"},{"text":"(no players have macro.admin tag)","color":"gray","italic":true}]

# Show players with macro.trusted score ≥ 1 (UUID allowlist)
execute if entity @a[scores={macro.trusted=1..}] run tellraw @s ["",{"text":" ◈ ","color":"#00AAAA"},{"text":"macro.trusted (UUID): ","color":"gray"},{"selector":"@a[scores={macro.trusted=1..}]","color":"aqua"}]

tellraw @s ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"#555555"}]
