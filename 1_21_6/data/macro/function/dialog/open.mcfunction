# macro:dialog/open (1.21.6+)
# Opens the dialog stored in macro:engine dialog.DIALOG for the executing player.
# Validates dialog structure before showing (type, title, actions required).
# Sends debug message to macro.debug-tagged players on every dialog open.
#
# REQUIRES: macro:engine dialog.DIALOG to be pre-set
# TAGS: macro.dialog_opened (set on success), macro.dialog_closed (cleared)
# SECURITY: dialog content must be pre-validated by the calling function.

scoreboard players set @s macro.dialog_load -1
tag @s remove macro.dialog_closed
tag @s remove macro.dialog_opened

# --- Validation: dialog must exist in storage ---
execute unless data storage macro:engine dialog.DIALOG run return run dialog show @s {"type":"multi_action","title":"","actions":[{"label":"Ok"}],"pause":false,"after_action":"close","body":{"type":"plain_message","contents":[{"text":"A problem occurred.","bold":true,"color":"yellow","italic":false},"\n\n",{"text":"Dialog Not Found","color":"red","bold":false,"italic":false}]}}

# --- Validation: dialog ID must not be empty ---
execute if data storage macro:engine {dialog:{DIALOG:""}} run return run dialog show @s {"type":"multi_action","title":"","actions":[{"label":"Ok"}],"pause":false,"after_action":"close","body":{"type":"plain_message","contents":[{"text":"A problem occurred.","bold":true,"color":"yellow","italic":false},"\n\n",{"text":"Unknown Dialog","color":"red","bold":false,"italic":false}]}}

# --- Validation: dialog must have a type field ---
execute unless data storage macro:engine dialog.DIALOG.type run return run dialog show @s {"type":"multi_action","title":"","actions":[{"label":"Ok"}],"pause":false,"after_action":"close","body":{"type":"plain_message","contents":[{"text":"A problem occurred.","bold":true,"color":"yellow","italic":false},"\n\n",{"text":"Unknown Dialog Type","color":"red","bold":false,"italic":false}]}}

# --- Validation: dialog must have a title field ---
execute unless data storage macro:engine dialog.DIALOG.title run return run dialog show @s {"type":"multi_action","title":"","actions":[{"label":"Ok"}],"pause":false,"after_action":"close","body":{"type":"plain_message","contents":[{"text":"A problem occurred.","bold":true,"color":"yellow","italic":false},"\n\n",{"text":"Missing Dialog Title","color":"red","bold":false,"italic":false}]}}

# --- Validation: multi_action dialogs must have actions ---
execute if data storage macro:engine {dialog:{DIALOG:{type:"multi_action"}}} unless data storage macro:engine dialog.DIALOG.actions run return run dialog show @s {"type":"multi_action","title":"","actions":[{"label":"Ok"}],"pause":false,"after_action":"close","body":{"type":"plain_message","contents":[{"text":"A problem occurred.","bold":true,"color":"yellow","italic":false},"\n\n",{"text":"Missing Actions","color":"red","bold":false,"italic":false}]}}

# --- All validation passed: show the dialog ---
execute if data storage macro:engine dialog.DIALOG run function macro:dialog/internal/show
execute if data storage macro:engine dialog.DIALOG run tag @s add macro.dialog_opened

# --- Debug message: notify macro.debug players of the dialog open event ---
# Shows: player name, dialog ID (from storage), timestamp (tick score)
execute if entity @s[tag=macro.dialog_opened] run tellraw @a[tag=macro.debug] ["",{"text":"[macroAPI] ","color":"#00AAAA","bold":true},{"text":"[DEBUG] ","color":"yellow"},{"text":"dialog/open ","color":"aqua"},{"text":"► ","color":"yellow"},{"selector":"@s","color":"white"},{"text":" opened dialog: ","color":"gray"},{"nbt":"dialog.DIALOG.title","storage":"macro:engine","color":"aqua"},{"text":" (type=","color":"#555555"},{"nbt":"dialog.DIALOG.type","storage":"macro:engine","color":"#aaaaaa"},{"text":")","color":"#555555"}]

# --- Notify admins (existing behavior) ---
execute if data storage macro:engine dialog.DIALOG run function macro:dialog/notify_admins

return 1
