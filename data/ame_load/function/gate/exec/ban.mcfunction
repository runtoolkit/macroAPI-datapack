# ame_load:gate/exec/ban
# This command has been DISABLED in macroAPI for security reasons.
# The 'ban' command is no longer executable through the gate system.
#
# If you need to ban a player, use the Minecraft server console directly:
#   /ban <player> <reason>
#
# Macro fields from pending_gate are still logged below (for audit trail).
# Fields: player, reason — required by macro line syntax rules.

# Audit log — does NOT execute the actual ban command
$tellraw @a[tag=macro.admin] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"⚠ BLOCKED: ban is DISABLED. Requested target: ","color":"red"},{"text":"$(player)","color":"white"},{"text":" reason: ","color":"gray"},{"text":"$(reason)","color":"yellow"}]
$tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"gate/exec/ban BLOCKED — command disabled in #macroAPI. target=","color":"red"},{"text":"$(player)","color":"white"}]

# Do NOT execute ban. Return failure to indicate gate action was blocked.
return 0
