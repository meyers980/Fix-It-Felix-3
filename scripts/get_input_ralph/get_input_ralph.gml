/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 54A92A30
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "get_input_ralph"
function get_input_ralph() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F389472
	/// @DnDParent : 54A92A30
	/// @DnDArgument : "var" "up_move"
	/// @DnDArgument : "value" "true"
	if(up_move == true)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 57D6EDE3
		/// @DnDParent : 1F389472
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_solidswing"
		/// @DnDSaveInfo : "object" "o_solidswing"
		var l57D6EDE3_0 = instance_place(x + 0, y + -1, o_solidswing);
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
	/// @DnDParent : 54A92A30
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
	/// @DnDParent : 54A92A30
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
	/// @DnDParent : 54A92A30
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

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 331974CD
	/// @DnDInput : 4
	/// @DnDParent : 54A92A30
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "expr_2" "false"
	/// @DnDArgument : "expr_3" "false"
	/// @DnDArgument : "var" "up_move"
	/// @DnDArgument : "var_1" "down_move"
	/// @DnDArgument : "var_2" "left_move"
	/// @DnDArgument : "var_3" "right_move"
	up_move = false;
	down_move = false;
	left_move = false;
	right_move = false;
}