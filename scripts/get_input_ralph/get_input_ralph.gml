/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 54A92A30
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "get_input_ralph"
function get_input_ralph() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14B8C296
	/// @DnDParent : 54A92A30
	/// @DnDArgument : "var" "input"
	/// @DnDArgument : "value" "true"
	if(input == true)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 10B7EF8F
		/// @DnDInput : 5
		/// @DnDParent : 14B8C296
		/// @DnDArgument : "var" "ralph_decision"
		/// @DnDArgument : "option_1" "1"
		/// @DnDArgument : "option_2" "2"
		/// @DnDArgument : "option_3" "3"
		/// @DnDArgument : "option_4" "4"
		ralph_decision = choose(0, 1, 2, 3, 4);
	
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 54353061
		/// @DnDParent : 14B8C296
		/// @DnDArgument : "expr" "ralph_decision"
		var l54353061_0 = ralph_decision;
		switch(l54353061_0)
		{
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 4F625FD7
			/// @DnDParent : 54353061
			case 0:
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 63E899F8
				/// @DnDParent : 4F625FD7
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "up_move"
				up_move = true;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 78B7BE4F
			/// @DnDParent : 54353061
			/// @DnDArgument : "const" "1"
			case 1:
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 51EA70F7
				/// @DnDParent : 78B7BE4F
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "down_move"
				down_move = true;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 43A9B959
			/// @DnDParent : 54353061
			/// @DnDArgument : "const" "2"
			case 2:
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7C5D9361
				/// @DnDParent : 43A9B959
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "right_move"
				right_move = true;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 348BEEB0
			/// @DnDParent : 54353061
			/// @DnDArgument : "const" "3"
			case 3:
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 029963AA
				/// @DnDParent : 348BEEB0
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "left_move"
				left_move = true;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 6A8950DD
			/// @DnDParent : 54353061
			/// @DnDArgument : "const" "4"
			case 4:
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5C390434
				/// @DnDParent : 6A8950DD
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "attack_move"
				attack_move = true;
				break;
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49CF3563
	/// @DnDParent : 54A92A30
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "input"
	input = false;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 79852F65
/// @DnDArgument : "funcName" "calc_movement_ralph"
function calc_movement_ralph() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F389472
	/// @DnDParent : 79852F65
	/// @DnDArgument : "var" "up_move"
	/// @DnDArgument : "value" "true"
	if(up_move == true)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 57D6EDE3
		/// @DnDParent : 1F389472
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-35"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_solidswing"
		/// @DnDSaveInfo : "object" "o_solidswing"
		var l57D6EDE3_0 = instance_place(x + 0, y + -35, o_solidswing);
		if ((l57D6EDE3_0 > 0))
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 18ECC936
			/// @DnDParent : 57D6EDE3
			/// @DnDArgument : "speed" ".4"
			speed = .4;
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 0EF17755
			/// @DnDParent : 57D6EDE3
			/// @DnDArgument : "value" "s_ralph_movedown_01"
			/// @DnDArgument : "instvar" "10"
			sprite_index = s_ralph_movedown_01;
		
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 2A9329A0
			/// @DnDParent : 57D6EDE3
			/// @DnDArgument : "direction" "90"
			direction = 90;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5938534F
	/// @DnDParent : 79852F65
	/// @DnDArgument : "var" "down_move"
	/// @DnDArgument : "value" "true"
	if(down_move == true)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 48EB1963
		/// @DnDParent : 5938534F
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_solidswing"
		/// @DnDSaveInfo : "object" "o_solidswing"
		var l48EB1963_0 = instance_place(x + 0, y + 40, o_solidswing);
		if ((l48EB1963_0 > 0))
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 1CE5578C
			/// @DnDParent : 48EB1963
			/// @DnDArgument : "speed" ".4"
			speed = .4;
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3178DAD1
			/// @DnDParent : 48EB1963
			/// @DnDArgument : "value" "s_ralph_movedown_01"
			/// @DnDArgument : "instvar" "10"
			sprite_index = s_ralph_movedown_01;
		
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 455A1AE0
			/// @DnDParent : 48EB1963
			/// @DnDArgument : "direction" "270"
			direction = 270;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DD08003
	/// @DnDParent : 79852F65
	/// @DnDArgument : "var" "left_move"
	/// @DnDArgument : "value" "true"
	if(left_move == true)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 2C30C2AD
		/// @DnDParent : 2DD08003
		/// @DnDArgument : "x" "-40"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "32"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_solidswing"
		/// @DnDSaveInfo : "object" "o_solidswing"
		var l2C30C2AD_0 = instance_place(x + -40, y + 32, o_solidswing);
		if ((l2C30C2AD_0 > 0))
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 290E0F17
			/// @DnDParent : 2C30C2AD
			/// @DnDArgument : "x" "-40"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "0"
			/// @DnDArgument : "y_relative" "1"
			x += -40;
			y += 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 5EC2AC9A
			/// @DnDParent : 2C30C2AD
			/// @DnDArgument : "value" "s_ralph_swingleft"
			/// @DnDArgument : "instvar" "10"
			sprite_index = s_ralph_swingleft;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4790E8F4
	/// @DnDParent : 79852F65
	/// @DnDArgument : "var" "right_move"
	/// @DnDArgument : "value" "true"
	if(right_move == true)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 59D71B06
		/// @DnDParent : 4790E8F4
		/// @DnDArgument : "x" "40"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "32"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_solidswing"
		/// @DnDSaveInfo : "object" "o_solidswing"
		var l59D71B06_0 = instance_place(x + 40, y + 32, o_solidswing);
		if ((l59D71B06_0 > 0))
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 7BACD6EC
			/// @DnDParent : 59D71B06
			/// @DnDArgument : "x" "40"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "0"
			/// @DnDArgument : "y_relative" "1"
			x += 40;
			y += 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 4543FB97
			/// @DnDParent : 59D71B06
			/// @DnDArgument : "value" "s_ralph_swingright"
			/// @DnDArgument : "instvar" "10"
			sprite_index = s_ralph_swingright;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EC61B1C
	/// @DnDParent : 79852F65
	/// @DnDArgument : "var" "attack_move"
	/// @DnDArgument : "value" "true"
	if(attack_move == true)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 22262105
		/// @DnDParent : 0EC61B1C
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "1"
		/// @DnDArgument : "objectid" "o_brickpile"
		/// @DnDArgument : "layer" ""Instances_Front""
		/// @DnDSaveInfo : "objectid" "o_brickpile"
		instance_create_layer(x + 0, 1, "Instances_Front", o_brickpile);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 4FC43BB9
		/// @DnDParent : 0EC61B1C
		/// @DnDArgument : "steps" "180"
		/// @DnDArgument : "alarm" "10"
		alarm_set(10, 180);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 331974CD
	/// @DnDInput : 5
	/// @DnDParent : 79852F65
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "expr_2" "false"
	/// @DnDArgument : "expr_3" "false"
	/// @DnDArgument : "expr_4" "false"
	/// @DnDArgument : "var" "up_move"
	/// @DnDArgument : "var_1" "down_move"
	/// @DnDArgument : "var_2" "left_move"
	/// @DnDArgument : "var_3" "right_move"
	/// @DnDArgument : "var_4" "attack_move"
	up_move = false;
	down_move = false;
	left_move = false;
	right_move = false;
	attack_move = false;
}