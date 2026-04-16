data modify storage macro:output inputs set from storage macro:input
data modify storage macro:output data set from storage macro:engine

execute unless data storage macro:output data.global{loaded:1b} run return 0

# engine stores v2.2.2-pre1 (lowercase v)
execute unless data storage macro:output data.global{version:"v1.0.2"} run return 0

# --- Dangerous commands: injection guard (permission-level 3 / singleplayer-incompatible) ---
execute if data storage macro:output inputs{func:"macro:cmd/op"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/op with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/op with storage macro:engine {op:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/op with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/op with storage macro:input {op:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/op with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/op with storage macro:output {op:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/op with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/op with storage macro:output {inputs:{}}"} run return 0

execute if data storage macro:output inputs{func:"macro:cmd/ban"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban with storage macro:engine {ban:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban with storage macro:input {ban:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban with storage macro:output {ban:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban with storage macro:output {inputs:{}}"} run return 0

execute if data storage macro:output inputs{func:"macro:cmd/ban_ip"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban_ip with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban_ip with storage macro:engine {ban_ip:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban_ip with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban_ip with storage macro:input {ban_ip:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban_ip with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban_ip with storage macro:output {ban_ip:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban_ip with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/ban_ip with storage macro:output {inputs:{}}"} run return 0

execute if data storage macro:output inputs{func:"macro:cmd/pardon"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon with storage macro:engine {pardon:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon with storage macro:input {pardon:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon with storage macro:output {pardon:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon with storage macro:output {inputs:{}}"} run return 0

execute if data storage macro:output inputs{func:"macro:cmd/pardon_ip"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon_ip with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon_ip with storage macro:engine {pardon_ip:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon_ip with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon_ip with storage macro:input {pardon_ip:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon_ip with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon_ip with storage macro:output {pardon_ip:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon_ip with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/pardon_ip with storage macro:output {inputs:{}}"} run return 0

execute if data storage macro:output inputs{func:"macro:cmd/kick"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/kick with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/kick with storage macro:engine {kick:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/kick with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/kick with storage macro:input {kick:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/kick with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/kick with storage macro:output {kick:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/kick with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/kick with storage macro:output {inputs:{}}"} run return 0

execute if data storage macro:output inputs{func:"macro:cmd/deop"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/deop with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/deop with storage macro:engine {deop:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/deop with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/deop with storage macro:input {deop:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/deop with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/deop with storage macro:output {deop:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/deop with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/deop with storage macro:output {inputs:{}}"} run return 0

execute if data storage macro:output inputs{func:"macro:cmd/stop"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/stop with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/stop with storage macro:engine {stop:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/stop with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/stop with storage macro:input {stop:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/stop with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/stop with storage macro:output {stop:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/stop with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/stop with storage macro:output {inputs:{}}"} run return 0

execute if data storage macro:output inputs{func:"macro:cmd/whitelist"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/whitelist with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/whitelist with storage macro:engine {whitelist:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/whitelist with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/whitelist with storage macro:input {whitelist:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/whitelist with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/whitelist with storage macro:output {whitelist:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/whitelist with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/whitelist with storage macro:output {inputs:{}}"} run return 0

execute if data storage macro:output inputs{func:"macro:cmd/data_remove_block"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_block with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_block with storage macro:engine {data_remove_block:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_block with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_block with storage macro:input {data_remove_block:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_block with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_block with storage macro:output {data_remove_block:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_block with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_block with storage macro:output {inputs:{}}"} run return 0

execute if data storage macro:output inputs{func:"macro:cmd/data_remove_entity"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_entity with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_entity with storage macro:engine {data_remove_entity:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_entity with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_entity with storage macro:input {data_remove_entity:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_entity with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_entity with storage macro:output {data_remove_entity:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_entity with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_entity with storage macro:output {inputs:{}}"} run return 0

execute if data storage macro:output inputs{func:"macro:cmd/data_remove_storage"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_storage with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_storage with storage macro:engine {data_remove_storage:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_storage with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_storage with storage macro:input {data_remove_storage:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_storage with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_storage with storage macro:output {data_remove_storage:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_storage with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/data_remove_storage with storage macro:output {inputs:{}}"} run return 0


# Block run_self: raw command execution bridge — vulnerable to all cmd injection
execute if data storage macro:output inputs{func:"macro:cmd/other/run_self"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/other/run_self with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/other/run_self with storage macro:engine {cmd:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/other/run_self with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/other/run_self with storage macro:input {cmd:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/other/run_self with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/other/run_self with storage macro:output {cmd:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/other/run_self with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/other/run_self with storage macro:output {inputs:{}}"} run return 0

# Block multi_cmd_adv: multi-command execution path without admin gate
execute if data storage macro:output inputs{func:"macro:cmd/other/multi_cmd_adv"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/other/multi_cmd_adv with storage macro:engine {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/other/multi_cmd_adv with storage macro:input {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/other/multi_cmd_adv with storage macro:output {}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/other/multi_cmd_adv with storage macro:output {data:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/other/multi_cmd_adv with storage macro:output {inputs:{}}"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/save-all"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/save-off"} run return 0
execute if data storage macro:output inputs{func:"macro:cmd/save-on"} run return 0

# Block general injection attempts targeting sensitive storage paths
execute if data storage macro:output inputs{func:"with storage macro:engine"} run return 0
execute if data storage macro:output inputs{func:"with storage macro:input"} run return 0
execute if data storage macro:output inputs{func:"with storage macro:output"} run return 0


# --- Extended input validation: ame_load namespace injection ---
# Blocks attempts to call privileged ame_load: functions through the tools API
execute if data storage macro:output inputs{func:"ame_load:load/yes"} run return 0
execute if data storage macro:output inputs{func:"ame_load:load/no"} run return 0
execute if data storage macro:output inputs{func:"ame_load:load/all"} run return 0
execute if data storage macro:output inputs{func:"ame_load:gate/yes"} run return 0
execute if data storage macro:output inputs{func:"ame_load:gate/no"} run return 0
execute if data storage macro:output inputs{func:"ame_load:gate/exec/ban"} run return 0
execute if data storage macro:output inputs{func:"ame_load:gate/exec/ban_ip"} run return 0
execute if data storage macro:output inputs{func:"ame_load:gate/exec/disable"} run return 0
execute if data storage macro:output inputs{func:"ame_load:_"} run return 0
execute if data storage macro:output inputs{func:"ame_load:timeout"} run return 0

# --- Extended input validation: engine/call namespace injection ---
execute if data storage macro:output inputs{func:"macro:engine/call/execute_validated"} run return 0
execute if data storage macro:output inputs{func:"macro:tools/utils/input_check"} run return 0
execute if data storage macro:output inputs{func:"macro:tools/utils/perm_check"} run return 0
execute if data storage macro:output inputs{func:"macro:tools/utils/check_all"} run return 0

# --- Extended input validation: macro injection via cmd field ---
# cmd strings containing 'function ame_load:' are blocked
execute if data storage macro:output inputs{cmd:"function ame_load:"} run return 0
execute if data storage macro:output inputs{cmd:"data modify storage macro:engine"} run return 0
execute if data storage macro:output inputs{cmd:"data remove storage macro:engine"} run return 0
execute if data storage macro:output inputs{cmd:"scoreboard players set #"} run return 0

# If validation passed, proceed to safe execution phase
function macro:engine/call/execute_validated

# Clean up temporary data (memory management and security)
data remove storage macro:output data
data remove storage macro:output inputs
