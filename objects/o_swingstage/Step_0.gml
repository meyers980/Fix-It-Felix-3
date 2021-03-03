/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 5CD9A232
/// @DnDArgument : "x1" "bbox_left"
/// @DnDArgument : "y1" "-300"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "bbox_right"
/// @DnDArgument : "y2" "300"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "obj" "o_felix"
/// @DnDArgument : "shape" "1"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "o_felix"
var l5CD9A232_0 = collision_rectangle(bbox_left, y + -300, bbox_right, y + 300, o_felix, true, 1);
if(!(l5CD9A232_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 64948A38
	/// @DnDParent : 5CD9A232
	/// @DnDArgument : "value" "s_swingstage_stopped"
	/// @DnDArgument : "instvar" "10"
	sprite_index = s_swingstage_stopped;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 72171419
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 642DF3F5
	/// @DnDParent : 72171419
	/// @DnDArgument : "value" "s_swingstage_go"
	/// @DnDArgument : "instvar" "10"
	sprite_index = s_swingstage_go;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57338977
/// @DnDArgument : "var" "on_rope"
/// @DnDArgument : "value" "true"
if(on_rope == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 61754751
	/// @DnDParent : 57338977
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
		/// @DnDArgument : "target" "felix"
		/// @DnDArgument : "target_temp" "1"
		/// @DnDArgument : "obj" "o_felix"
		/// @DnDArgument : "shape" "1"
		/// @DnDSaveInfo : "obj" "o_felix"
		var l6E6D9120_0 = collision_rectangle(bbox_left, y + -300, bbox_right, y + 300, o_felix, true, 1);
		var felix = l6E6D9120_0;
		if((l6E6D9120_0))
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 60CEC7F9
			/// @DnDParent : 6E6D9120
			/// @DnDArgument : "var" "felix.state"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "ps.DEAD"
			if(!(felix.state == ps.DEAD))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 058B8AE7
				/// @DnDInput : 2
				/// @DnDParent : 60CEC7F9
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "expr_1" "true"
				/// @DnDArgument : "var" "y"
				/// @DnDArgument : "var_1" "moving"
				y += 1;
				moving = true;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7EBDFD07
	/// @DnDParent : 57338977
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7D07044A
		/// @DnDParent : 7EBDFD07
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "moving"
		moving = false;
	}
}

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
	/// @DnDArgument : "target" "felix"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "obj" "o_felix"
	/// @DnDArgument : "shape" "1"
	/// @DnDSaveInfo : "obj" "o_felix"
	var l13CB2E55_0 = collision_rectangle(bbox_left, y + -300, bbox_right, y + 300, o_felix, true, 1);
	var felix = l13CB2E55_0;
	if((l13CB2E55_0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 02CBFFAB
		/// @DnDParent : 13CB2E55
		/// @DnDArgument : "var" "felix.state"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "ps.DEAD"
		if(!(felix.state == ps.DEAD))
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4AE47DAE
			/// @DnDParent : 02CBFFAB
			/// @DnDArgument : "var" "y"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "48"
			if(y > 48)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7C4B7FC9
				/// @DnDInput : 2
				/// @DnDParent : 4AE47DAE
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "expr_1" "true"
				/// @DnDArgument : "var" "y"
				/// @DnDArgument : "var_1" "moving"
				y += -1;
				moving = true;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 122D6FFF
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_solidswing"
/// @DnDSaveInfo : "object" "o_solidswing"
var l122D6FFF_0 = instance_place(x + 0, y + 0, o_solidswing);
if ((l122D6FFF_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3567F8F8
	/// @DnDParent : 122D6FFF
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "on_rope"
	on_rope = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6D87A43C
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1EAD3F19
	/// @DnDParent : 6D87A43C
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "on_rope"
	on_rope = false;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 712589D3
/// @DnDArgument : "var" "moving"
/// @DnDArgument : "value" "true"
if(moving == true)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 30B28511
	/// @DnDParent : 712589D3
	image_speed = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 51E0279C
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 321C96F8
	/// @DnDParent : 51E0279C
	/// @DnDArgument : "speed" "0"
	image_speed = 0;
}