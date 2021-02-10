/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 24A80C76
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target" "rider"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "object" "o_swingstage"
/// @DnDSaveInfo : "object" "o_swingstage"
var l24A80C76_0 = instance_place(x + 0, y + 1, o_swingstage);
var rider = l24A80C76_0;
if ((l24A80C76_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B72E742
	/// @DnDInput : 3
	/// @DnDParent : 24A80C76
	/// @DnDArgument : "expr" "rider.y - 5"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "expr_2" "rider.vsp"
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "var_1" "on_ground"
	/// @DnDArgument : "var_2" "vsp"
	y = rider.y - 5;
	on_ground = true;
	vsp = rider.vsp;
}