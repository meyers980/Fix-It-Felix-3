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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 007671A0
/// @DnDArgument : "var" "hammer_count"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "2"
if(hammer_count <= 2)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0CD9BAE0
	/// @DnDParent : 007671A0
	/// @DnDArgument : "soundid" "sfx_throw00"
	/// @DnDSaveInfo : "soundid" "sfx_throw00"
	audio_play_sound(sfx_throw00, 0, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 143AF2E8
/// @DnDArgument : "var" "hammer_count"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "3"
if(hammer_count >= 3)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1F3EFA51
	/// @DnDParent : 143AF2E8
	/// @DnDArgument : "soundid" "sfx_throw02"
	/// @DnDSaveInfo : "soundid" "sfx_throw02"
	audio_play_sound(sfx_throw02, 0, 0);
}