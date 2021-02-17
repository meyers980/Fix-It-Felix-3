/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 63B3013F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_solidswing"
/// @DnDSaveInfo : "object" "o_solidswing"
var l63B3013F_0 = instance_place(x + 0, y + -1, o_solidswing);
if ((l63B3013F_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4124A6FE
	/// @DnDParent : 63B3013F
	/// @DnDArgument : "speed" ".4"
	speed = .4;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 34B12F77
	/// @DnDParent : 63B3013F
	/// @DnDArgument : "value" "s_ralph_movedown_01"
	/// @DnDArgument : "instvar" "10"
	sprite_index = s_ralph_movedown_01;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 19EF2EA7
	/// @DnDParent : 63B3013F
	/// @DnDArgument : "direction" "90"
	direction = 90;
}