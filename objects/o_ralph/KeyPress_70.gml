/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3F4BF394
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "32"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_solidswing"
/// @DnDSaveInfo : "object" "o_solidswing"
var l3F4BF394_0 = instance_place(x + 0, y + 32, o_solidswing);
if ((l3F4BF394_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 520A4202
	/// @DnDParent : 3F4BF394
	/// @DnDArgument : "speed" ".5"
	speed = .5;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 29FB3E6F
	/// @DnDParent : 3F4BF394
	/// @DnDArgument : "value" "s_ralph_movedown_01"
	/// @DnDArgument : "instvar" "10"
	sprite_index = s_ralph_movedown_01;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 50C1A57C
	/// @DnDParent : 3F4BF394
	/// @DnDArgument : "direction" "270"
	direction = 270;
}