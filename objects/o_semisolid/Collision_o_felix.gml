/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3320D5DC
/// @DnDArgument : "var" "other.bbox_bottom"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "y - 6"
if(other.bbox_bottom <= y - 6)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09D65572
	/// @DnDParent : 3320D5DC
	/// @DnDArgument : "expr" "-5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "other.y"
	other.y += -5;
}