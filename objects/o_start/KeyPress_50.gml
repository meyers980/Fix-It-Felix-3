/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00008C66
/// @DnDArgument : "var" "global.coins"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.coins > 1)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 23BBFE2D
	/// @DnDInput : 3
	/// @DnDParent : 00008C66
	/// @DnDArgument : "value" "-2"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "value_1" "2"
	/// @DnDArgument : "value_2" "1"
	/// @DnDArgument : "var" "coins"
	/// @DnDArgument : "var_1" "numberofplayers"
	/// @DnDArgument : "var_2" "level"
	global.coins += -2;
	global.numberofplayers = 2;
	global.level = 1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 42F3D826
	/// @DnDParent : 00008C66
	/// @DnDArgument : "xpos" "112"
	/// @DnDArgument : "ypos" "232"
	/// @DnDArgument : "objectid" "o_felix"
	/// @DnDSaveInfo : "objectid" "o_felix"
	instance_create_layer(112, 232, "Instances", o_felix);

	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 060927DB
	/// @DnDParent : 00008C66
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 38090155
	/// @DnDDisabled : 1
	/// @DnDParent : 00008C66
	/// @DnDArgument : "soundid" "sfx_songontrodelayed"


	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5E46B364
	/// @DnDParent : 00008C66
	/// @DnDArgument : "room" "r_room01"
	/// @DnDSaveInfo : "room" "r_room01"
	room_goto(r_room01);
}