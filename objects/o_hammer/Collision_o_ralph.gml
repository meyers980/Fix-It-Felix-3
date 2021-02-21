/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6D03C88E
/// @DnDApplyTo : other
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-24"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_solidswing"
/// @DnDSaveInfo : "object" "o_solidswing"
with(other) {
var l6D03C88E_0 = instance_place(x + 0, y + -24, o_solidswing);
}
if ((l6D03C88E_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DD2546C
	/// @DnDParent : 6D03C88E
	/// @DnDArgument : "expr" "-2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "other.y"
	other.y += -2;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 54F27BAE
instance_destroy();