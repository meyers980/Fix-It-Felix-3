/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 08950995
/// @DnDArgument : "function" "calc_movement"
calc_movement();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13C19C61
/// @DnDInput : 2
/// @DnDArgument : "expr" "hsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "vsp"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x += hsp;
y += vsp;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 7ABEB281
/// @DnDArgument : "angle" "2 * -facing"
/// @DnDArgument : "angle_relative" "1"
image_angle += 2 * -facing;