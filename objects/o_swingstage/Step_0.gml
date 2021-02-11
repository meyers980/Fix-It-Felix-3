/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5E790797
/// @DnDArgument : "key" "vk_up"
var l5E790797_0;
l5E790797_0 = keyboard_check(vk_up);
if (l5E790797_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 13CB2E55
	/// @DnDParent : 5E790797
	/// @DnDArgument : "x1" "bbox_left"
	/// @DnDArgument : "y1" "-300"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "bbox_right"
	/// @DnDArgument : "y2" "300"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "obj" "o_felix"
	/// @DnDArgument : "shape" "1"
	/// @DnDSaveInfo : "obj" "o_felix"
	var l13CB2E55_0 = collision_rectangle(bbox_left, y + -300, bbox_right, y + 300, o_felix, true, 1);
	if((l13CB2E55_0))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 506BAEBA
		/// @DnDParent : 13CB2E55
		/// @DnDArgument : "speed" "1"
		speed = 1;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 44736E58
		/// @DnDParent : 13CB2E55
		/// @DnDArgument : "direction" "90"
		direction = 90;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 42D4C43C
	/// @DnDParent : 5E790797
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 2469507A
		/// @DnDParent : 42D4C43C
		speed = 0;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 61754751
/// @DnDArgument : "key" "vk_down"
var l61754751_0;
l61754751_0 = keyboard_check(vk_down);
if (l61754751_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 6E6D9120
	/// @DnDParent : 61754751
	/// @DnDArgument : "x1" "bbox_left"
	/// @DnDArgument : "y1" "-300"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "bbox_right"
	/// @DnDArgument : "y2" "300"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "obj" "o_felix"
	/// @DnDArgument : "shape" "1"
	/// @DnDSaveInfo : "obj" "o_felix"
	var l6E6D9120_0 = collision_rectangle(bbox_left, y + -300, bbox_right, y + 300, o_felix, true, 1);
	if((l6E6D9120_0))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 336C91DD
		/// @DnDParent : 6E6D9120
		/// @DnDArgument : "speed" "1"
		speed = 1;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 3266D435
		/// @DnDParent : 6E6D9120
		/// @DnDArgument : "direction" "270"
		direction = 270;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1F1270FD
	/// @DnDParent : 61754751
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 46D28814
		/// @DnDParent : 1F1270FD
		speed = 0;
	}
}