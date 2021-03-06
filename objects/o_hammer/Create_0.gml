/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0B13555E
/// @DnDInput : 2
/// @DnDArgument : "expr" "-2"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "facing * 3"
/// @DnDArgument : "var" "vsp"
/// @DnDArgument : "var_1" "hsp"
vsp += -2;
hsp = facing * 3;

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 768BCB35
/// @DnDArgument : "var" "hammer_count"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "o_hammer"
/// @DnDSaveInfo : "object" "o_hammer"
var hammer_count = instance_number(o_hammer);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 7980E145
/// @DnDArgument : "soundid" "sfx_hammerpower"
/// @DnDSaveInfo : "soundid" "sfx_hammerpower"
audio_stop_sound(sfx_hammerpower);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 1F3EFA51
/// @DnDArgument : "soundid" "sfx_hammerpower"
/// @DnDSaveInfo : "soundid" "sfx_hammerpower"
audio_play_sound(sfx_hammerpower, 0, 0);