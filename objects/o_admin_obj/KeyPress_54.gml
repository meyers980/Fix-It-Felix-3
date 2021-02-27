/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5A7B16EA
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "coins"
global.coins += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2ACF87D8
/// @DnDArgument : "var" "global.coins"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "2"
if(global.coins < 2)
{
	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5A331B55
	/// @DnDParent : 2ACF87D8
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4C274B8F
	/// @DnDDisabled : 1
	/// @DnDParent : 2ACF87D8
	/// @DnDArgument : "soundid" "sfx_coin1"
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1146AE3A
else
{
	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 055283A1
	/// @DnDParent : 1146AE3A
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 64813EA3
	/// @DnDDisabled : 1
	/// @DnDParent : 1146AE3A
	/// @DnDArgument : "soundid" "sfx_coin2"
}