/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43CF9E27
/// @DnDArgument : "var" "global.coins"
/// @DnDArgument : "op" "2"
if(global.coins > 0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 61B5F751
	/// @DnDInput : 6
	/// @DnDParent : 43CF9E27
	/// @DnDArgument : "value" "-1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "value_1" "1"
	/// @DnDArgument : "value_2" "1"
	/// @DnDArgument : "value_4" "global.playerlives"
	/// @DnDArgument : "value_5" "1"
	/// @DnDArgument : "var" "coins"
	/// @DnDArgument : "var_1" "numberofplayers"
	/// @DnDArgument : "var_2" "p1_level"
	/// @DnDArgument : "var_3" "p1_score"
	/// @DnDArgument : "var_4" "p1_lives"
	/// @DnDArgument : "var_5" "global.turn"
	global.coins += -1;
	global.numberofplayers = 1;
	global.p1_level = 1;
	global.p1_score = 0;
	global.p1_lives = global.playerlives;
	global.turn = 1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 15E77195
	/// @DnDParent : 43CF9E27
	/// @DnDArgument : "xpos" "112"
	/// @DnDArgument : "ypos" "232"
	/// @DnDArgument : "objectid" "o_felix"
	/// @DnDSaveInfo : "objectid" "o_felix"
	instance_create_layer(112, 232, "Instances", o_felix);

	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 28BB3A39
	/// @DnDParent : 43CF9E27
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 14B31371
	/// @DnDDisabled : 1
	/// @DnDParent : 43CF9E27
	/// @DnDArgument : "soundid" "sfx_songontrodelayed"


	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 11EE6EDE
	/// @DnDParent : 43CF9E27
	/// @DnDArgument : "room" "r_room01"
	/// @DnDSaveInfo : "room" "r_room01"
	room_goto(r_room01);
}