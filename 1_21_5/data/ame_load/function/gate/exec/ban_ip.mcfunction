# ame_load:gate/exec/ban_ip
# This command has been DISABLED in macroAPI for security reasons.
# The 'ban-ip' command is no longer executable through the gate system.
#
# If you need to ban a player, use the Minecraft server console directly:
#   /ban-ip <player> <reason>
#
# Macro fields from pending_gate are still logged below (for audit trail).
# Fields: player, reason — required by macro line syntax rules.

# Audit log — does NOT execute the actual ban-ip command
$tellraw @a[tag=macro.admin] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"⚠ BLOCKED: ban_ip is DISABLED. Requested target: ","color":"red"},{"text":"$(player)","color":"white"},{"text":" reason: ","color":"gray"},{"text":"$(reason)","color":"yellow"}]
$tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"gate/exec/ban_ip BLOCKED — command disabled in macroAPI. target=","color":"red"},{"text":"$(player)","color":"white"}]

# Do NOT execute ban-ip. Return failure to indicate gate action was blocked.
return 0
