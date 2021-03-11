/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6D03C88E
/// @DnDApplyTo : other
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-35"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_solidswing"
/// @DnDSaveInfo : "object" "o_solidswing"
with(other) {
var l6D03C88E_0 = instance_place(x + 0, y + -35, o_solidswing);
}
if ((l6D03C88E_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DD2546C
	/// @DnDInput : 3
	/// @DnDApplyTo : other
	/// @DnDParent : 6D03C88E
	/// @DnDArgument : "expr" "-2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "10"
	/// @DnDArgument : "expr_2" "45"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "var_1" "alarm[11]"
	/// @DnDArgument : "var_2" "alarm[10]"
	with(other) {
	y += -2;
	alarm[11] = 10;
	alarm[10] += 45;
	
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 361AB0B9
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 446CC01E
	/// @DnDInput : 2
	/// @DnDApplyTo : other
	/// @DnDParent : 361AB0B9
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "expr_1" "30"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "alarm[11]"
	/// @DnDArgument : "var_1" "alarm[10]"
	with(other) {
	alarm[11] = 10;
	alarm[10] += 30;
	
	}
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7B187272
/// @DnDArgument : "soundid" "sfx_hitbyhammer"
/// @DnDSaveInfo : "soundid" "sfx_hitbyhammer"
audio_play_sound(sfx_hitbyhammer, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 54F27BAE
instance_destroy();