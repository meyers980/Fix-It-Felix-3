/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 12C8A4C6
/// @DnDArgument : "x" "-40"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "32"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_solidswing"
/// @DnDSaveInfo : "object" "o_solidswing"
var l12C8A4C6_0 = instance_place(x + -40, y + 32, o_solidswing);
if ((l12C8A4C6_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 67E8CA8F
	/// @DnDParent : 12C8A4C6
	/// @DnDArgument : "x" "-40"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += -40;
	y += 0;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3AD49F2D
	/// @DnDParent : 12C8A4C6
	/// @DnDArgument : "value" "s_ralph_swingleft"
	/// @DnDArgument : "instvar" "10"
	sprite_index = s_ralph_swingleft;
}