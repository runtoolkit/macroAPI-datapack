# macro:tools/admin/remove
# Revokes admin access from a target player by:
#   1. Removing the macro.admin entity tag
#   2. Resetting macro.trusted scoreboard to 0 (UUID allowlist removal)
#   3. Logging the action to macro.debug
#
# INPUT: $(target) — player name, $(NAME) — display name
#
# SECURITY: Requires the caller to already have macro.admin tag.
# This function is itself gated by macro:tools/utils/check_all.

execute unless function macro:tools/utils/check_all run return run tellraw @s ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"✘ ","color":"red"},{"text":"Permission denied.","color":"red"}]

# Remove macro.admin tag from target player (bug fix: was 'nane=' — now 'name=')
$execute if entity @s[tag=macro.admin] run tag @a[name=$(target),limit=1] remove macro.admin

# Reset macro.trusted scoreboard (removes UUID-allowlist auth)
$execute if entity @s[tag=macro.admin] run scoreboard players set @a[name=$(target),limit=1] macro.trusted 0

# Debug + confirmation log
$tellraw @s ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"✔ ","color":"green"},{"text":"$(NAME)","color":"white"},{"text":" removed from admin list (tag + UUID allowlist revoked).","color":"green"}]
$tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"tools/admin/remove ","color":"aqua"},{"text":"✔ ","color":"green"},{"text":"$(target)","color":"white"},{"text":" macro.admin + macro.trusted revoked.","color":"#555555"}]
