/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5DEFF039
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "35"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_solidswing"
/// @DnDSaveInfo : "object" "o_solidswing"
var l5DEFF039_0 = instance_place(x + 0, y + 35, o_solidswing);
if ((l5DEFF039_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 027638FD
	/// @DnDParent : 5DEFF039
	/// @DnDArgument : "expr" "other.speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += other.speed;
}