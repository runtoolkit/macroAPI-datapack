# macro:tools/admin/add
# Grants admin access to a target player by:
#   1. Adding the macro.admin entity tag
#   2. Setting macro.trusted scoreboard = 1 (UUID allowlist)
#   3. Logging the action to macro.debug
#
# INPUT: $(target) — player name, $(NAME) — display name
#
# SECURITY: Requires the caller to already have macro.admin tag.
# This function is itself gated by macro:tools/utils/check_all.

execute unless function macro:tools/utils/check_all run return run tellraw @s ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"✘ ","color":"red"},{"text":"Permission denied.","color":"red"}]

# Add macro.admin tag to target player (bug fix: was 'nane=' — now 'name=')
$execute if entity @s[tag=macro.admin] run tag @a[name=$(target),limit=1] add macro.admin

# Set macro.trusted scoreboard for UUID-allowlist auth (survives tag removal)
$execute if entity @s[tag=macro.admin] run scoreboard players set @a[name=$(target),limit=1] macro.trusted 1

# Store player name in UUID allowlist within engine storage (for reference/restore)
$execute if entity @s[tag=macro.admin] run data modify storage macro:engine security.trusted_players append value "$(target)"

# Debug + confirmation log
$tellraw @s ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"✔ ","color":"green"},{"text":"$(NAME)","color":"white"},{"text":" added as admin (tag + UUID allowlist).","color":"green"}]
$tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"tools/admin/add ","color":"aqua"},{"text":"✔ ","color":"green"},{"text":"$(target)","color":"white"},{"text":" granted macro.admin + macro.trusted.","color":"#555555"}]
