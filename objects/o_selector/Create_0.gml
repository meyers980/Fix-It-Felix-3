/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4E57275E
/// @DnDInput : 3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" ""a""
/// @DnDArgument : "expr_2" "1"
/// @DnDArgument : "var" "initial_position"
/// @DnDArgument : "var_1" "currentletter"
/// @DnDArgument : "var_2" "alphabet_position"
initial_position = 1;
currentletter = "a";
alphabet_position = 1;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5BAC68DD
/// @DnDArgument : "code" "alphabet="abcdefghijklmnopqrstuvwxyz.-"$(13_10)index_a = 1$(13_10)index_b = 1$(13_10)index_c = 1$(13_10)tempname_a = "_"$(13_10)tempname_b = "_"$(13_10)tempname_c = "_""
alphabet="abcdefghijklmnopqrstuvwxyz.-"
index_a = 1
index_b = 1
index_c = 1
tempname_a = "_"
tempname_b = "_"
tempname_c = "_"

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 056CE17A
/// @DnDArgument : "steps" "1440"
alarm_set(0, 1440);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 62E58A40
/// @DnDArgument : "soundid" "sfx_score_entry"
/// @DnDSaveInfo : "soundid" "sfx_score_entry"
audio_play_sound(sfx_score_entry, 0, 0);