/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4EA6C1E2
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 442F974C
/// @DnDArgument : "x" "205"
/// @DnDArgument : "y" "215"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "tempname_a"
draw_text(205, 215,  + string(tempname_a));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 34C7BC7D
/// @DnDArgument : "x" "235"
/// @DnDArgument : "y" "215"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "tempname_b"
draw_text(235, 215,  + string(tempname_b));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1DB7B682
/// @DnDArgument : "x" "265"
/// @DnDArgument : "y" "215"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "tempname_c"
draw_text(265, 215,  + string(tempname_c));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0688BF2B
/// @DnDArgument : "y" "320"
/// @DnDArgument : "caption" ""Time Remaining: ""
/// @DnDArgument : "var" "countdownseconds"
draw_text(0, 320, string("Time Remaining: ") + string(countdownseconds));

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 54A85F67
/// @DnDArgument : "obj" "o_player1"
/// @DnDSaveInfo : "obj" "o_player1"
var l54A85F67_0 = false;
l54A85F67_0 = instance_exists(o_player1);
if(l54A85F67_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 5A2A7845
	/// @DnDParent : 54A85F67
	/// @DnDArgument : "x" "96"
	/// @DnDArgument : "y" "80"
	/// @DnDArgument : "caption" ""New Hiscore: ""
	/// @DnDArgument : "var" "o_player1.__dnd_score"
	draw_text(96, 80, string("New Hiscore: ") + string(o_player1.__dnd_score));
}