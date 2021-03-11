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
	/// @DnDInput : 11
	/// @DnDParent : 00008C66
	/// @DnDArgument : "value" "-2"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "value_1" "2"
	/// @DnDArgument : "value_2" "1"
	/// @DnDArgument : "value_4" "global.playerlives"
	/// @DnDArgument : "value_5" "1"
	/// @DnDArgument : "value_6" "1"
	/// @DnDArgument : "value_8" "global.playerlives"
	/// @DnDArgument : "value_9" "r_room01"
	/// @DnDArgument : "value_10" "r_room01"
	/// @DnDArgument : "var" "coins"
	/// @DnDArgument : "var_1" "numberofplayers"
	/// @DnDArgument : "var_2" "p2_level"
	/// @DnDArgument : "var_3" "p2_score"
	/// @DnDArgument : "var_4" "p2_lives"
	/// @DnDArgument : "var_5" "global.turn"
	/// @DnDArgument : "var_6" "p1_level"
	/// @DnDArgument : "var_7" "p1_score"
	/// @DnDArgument : "var_8" "p1_lives"
	/// @DnDArgument : "var_9" "p1_room"
	/// @DnDArgument : "var_10" "p2_room"
	global.coins += -2;
	global.numberofplayers = 2;
	global.p2_level = 1;
	global.p2_score = 0;
	global.p2_lives = global.playerlives;
	global.turn = 1;
	global.p1_level = 1;
	global.p1_score = 0;
	global.p1_lives = global.playerlives;
	global.p1_room = r_room01;
	global.p2_room = r_room01;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1D4633F1
	/// @DnDInput : 2
	/// @DnDParent : 00008C66
	/// @DnDArgument : "value" "false"
	/// @DnDArgument : "value_1" "false"
	/// @DnDArgument : "var" "p1_freelife"
	/// @DnDArgument : "var_1" "p2_freelife"
	global.p1_freelife = false;
	global.p2_freelife = false;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 42F3D826
	/// @DnDParent : 00008C66
	/// @DnDArgument : "xpos" "112"
	/// @DnDArgument : "ypos" "228"
	/// @DnDArgument : "objectid" "o_felix"
	/// @DnDSaveInfo : "objectid" "o_felix"
	instance_create_layer(112, 228, "Instances", o_felix);

	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 060927DB
	/// @DnDParent : 00008C66
	audio_stop_all();

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5E46B364
	/// @DnDParent : 00008C66
	/// @DnDArgument : "room" "r_room01"
	/// @DnDSaveInfo : "room" "r_room01"
	room_goto(r_room01);
}