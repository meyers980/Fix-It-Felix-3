/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 14C77390
/// @DnDArgument : "x1" "bbox_left"
/// @DnDArgument : "y1" "-300"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "bbox_right"
/// @DnDArgument : "y2" "300"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "obj" "o_felix"
/// @DnDArgument : "shape" "1"
/// @DnDSaveInfo : "obj" "o_felix"
var l14C77390_0 = collision_rectangle(bbox_left, y + -300, bbox_right, y + 300, o_felix, true, 1);
if((l14C77390_0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0F33F580
	/// @DnDParent : 14C77390
	/// @DnDArgument : "speed" "1"
	speed = 1;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 0D241ADA
	/// @DnDParent : 14C77390
	/// @DnDArgument : "direction" "90"
	direction = 90;
}