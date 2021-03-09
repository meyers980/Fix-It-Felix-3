/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79E057EB
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "32"
if(x > 32)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 5617B698
	/// @DnDParent : 79E057EB
	/// @DnDArgument : "x" "-16"
	/// @DnDArgument : "x_relative" "1"
	x += -16;
}