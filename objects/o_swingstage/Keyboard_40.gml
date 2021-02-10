/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 01785D6E
/// @DnDArgument : "x1" "bbox_left"
/// @DnDArgument : "y1" "-300"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "bbox_right"
/// @DnDArgument : "y2" "300"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "obj" "o_felix"
/// @DnDArgument : "shape" "1"
/// @DnDSaveInfo : "obj" "o_felix"
var l01785D6E_0 = collision_rectangle(bbox_left, y + -300, bbox_right, y + 300, o_felix, true, 1);
if((l01785D6E_0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 412565ED
	/// @DnDParent : 01785D6E
	/// @DnDArgument : "speed" "1"
	speed = 1;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 06FEBFD6
	/// @DnDParent : 01785D6E
	/// @DnDArgument : "direction" "270"
	direction = 270;
}