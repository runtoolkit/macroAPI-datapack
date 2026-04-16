# macro:dialog/notify_admins
# Notifies all macro.admin-tagged players when a dialog is opened.
# Also provides full debug info to macro.debug players.
# Called from macro:dialog/open after successful validation.

# Only run for a player with an open dialog
execute unless entity @s[tag=macro.dialog_opened] run return 0

# Notify admins: simple message with player selector
tellraw @a[tag=macro.admin] ["",{"text":"[macroAPI] ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" opened a dialog.","color":"white"},{"text":" [ID=","color":"#555555"},{"nbt":"dialog.DIALOG.title","storage":"macro:engine","color":"#aaaaaa"},{"text":"]","color":"#555555"}]

# Debug: full UUID and dialog type for macro.debug players
tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"[DEBUG] dialog/notify_admins ","color":"aqua"},{"text":"player=","color":"gray"},{"selector":"@s","color":"white"},{"text":" title=","color":"gray"},{"nbt":"dialog.DIALOG.title","storage":"macro:engine","color":"aqua"},{"text":" type=","color":"gray"},{"nbt":"dialog.DIALOG.type","storage":"macro:engine","color":"#aaaaaa"}]
