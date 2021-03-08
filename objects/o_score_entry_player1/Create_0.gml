/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 373778EB
/// @DnDInput : 2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" ""a""
/// @DnDArgument : "var" "initial_position"
/// @DnDArgument : "var_1" "currentletter"
initial_position = 1;
currentletter = "a";

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 44D2E122
/// @DnDArgument : "code" "alphabet="abcdefghijklmnopqrstuvwxyz"$(13_10)index_a = 1$(13_10)index_b = 1$(13_10)index_c = 1$(13_10)tempname_a = "a"$(13_10)tempname_b = "a"$(13_10)tempname_c = "a""
alphabet="abcdefghijklmnopqrstuvwxyz"
index_a = 1
index_b = 1
index_c = 1
tempname_a = "a"
tempname_b = "a"
tempname_c = "a"

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0ED29F9F
/// @DnDArgument : "steps" "2200"
alarm_set(0, 2200);