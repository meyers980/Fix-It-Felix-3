/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 73095669
/// @DnDArgument : "funcName" "check_state"
function check_state() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 333CC541
	/// @DnDParent : 73095669
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 251CE059
		/// @DnDParent : 333CC541
		/// @DnDArgument : "var" "hsp"
		if(hsp == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45C43294
			/// @DnDParent : 251CE059
			/// @DnDArgument : "expr" "ps.IDLE"
			/// @DnDArgument : "var" "state"
			state = ps.IDLE;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7ADECF3C
		/// @DnDParent : 333CC541
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 714F9E0A
			/// @DnDParent : 7ADECF3C
			/// @DnDArgument : "expr" "ps.WALK"
			/// @DnDArgument : "var" "state"
			state = ps.WALK;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 39574659
	/// @DnDParent : 73095669
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C0E277D
		/// @DnDParent : 39574659
		/// @DnDArgument : "var" "on_swing"
		/// @DnDArgument : "value" "true"
		if(on_swing == true)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 46C80DE6
			/// @DnDParent : 1C0E277D
			/// @DnDArgument : "var" "hsp"
			if(hsp == 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1117BFBB
				/// @DnDParent : 46C80DE6
				/// @DnDArgument : "expr" "ps.IDLE"
				/// @DnDArgument : "var" "state"
				state = ps.IDLE;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1E9F4309
			/// @DnDParent : 1C0E277D
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 556D8294
				/// @DnDParent : 1E9F4309
				/// @DnDArgument : "expr" "ps.WALK"
				/// @DnDArgument : "var" "state"
				state = ps.WALK;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 76375A46
		/// @DnDParent : 39574659
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 76590255
			/// @DnDParent : 76375A46
			/// @DnDArgument : "expr" "ps.AIR"
			/// @DnDArgument : "var" "state"
			state = ps.AIR;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6733C973
/// @DnDArgument : "funcName" "check_state_duck"
function check_state_duck() 
{
	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 371DCA82
	/// @DnDParent : 6733C973
	/// @DnDArgument : "target" "duck_direction"
	/// @DnDArgument : "instvar" "6"
	duck_direction = direction;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31599D89
	/// @DnDParent : 6733C973
	/// @DnDArgument : "var" "duck_direction"
	if(duck_direction == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3AF4B3E5
		/// @DnDInput : 3
		/// @DnDParent : 31599D89
		/// @DnDArgument : "expr" "es.SIDE"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "var_1" "facing"
		/// @DnDArgument : "var_2" "duck_rotate"
		state = es.SIDE;
		facing = 1;
		duck_rotate = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E2A04C8
	/// @DnDParent : 6733C973
	/// @DnDArgument : "var" "duck_direction"
	/// @DnDArgument : "value" "180"
	if(duck_direction == 180)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B2C5811
		/// @DnDInput : 3
		/// @DnDParent : 5E2A04C8
		/// @DnDArgument : "expr" "es.SIDE"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "var_1" "facing"
		/// @DnDArgument : "var_2" "duck_rotate"
		state = es.SIDE;
		facing = -1;
		duck_rotate = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7456D0A7
	/// @DnDParent : 6733C973
	/// @DnDArgument : "var" "duck_direction"
	/// @DnDArgument : "value" "270"
	if(duck_direction == 270)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A96D81D
		/// @DnDInput : 3
		/// @DnDParent : 7456D0A7
		/// @DnDArgument : "expr" "es.UP"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "expr_2" "180"
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "var_1" "facing"
		/// @DnDArgument : "var_2" "duck_rotate"
		state = es.UP;
		facing = 1;
		duck_rotate = 180;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39746E44
	/// @DnDParent : 6733C973
	/// @DnDArgument : "var" "duck_direction"
	/// @DnDArgument : "value" "90"
	if(duck_direction == 90)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 18A2F29F
		/// @DnDInput : 3
		/// @DnDParent : 39746E44
		/// @DnDArgument : "expr" "es.UP"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "var_1" "facing"
		/// @DnDArgument : "var_2" "duck_rotate"
		state = es.UP;
		facing = 1;
		duck_rotate = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 144D4196
	/// @DnDParent : 6733C973
	/// @DnDArgument : "var" "duck_direction"
	/// @DnDArgument : "value" "45"
	if(duck_direction == 45)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73CF4939
		/// @DnDInput : 3
		/// @DnDParent : 144D4196
		/// @DnDArgument : "expr" "es.DIAG"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "var_1" "facing"
		/// @DnDArgument : "var_2" "duck_rotate"
		state = es.DIAG;
		facing = 1;
		duck_rotate = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 336B0BAB
	/// @DnDParent : 6733C973
	/// @DnDArgument : "var" "duck_direction"
	/// @DnDArgument : "value" "135"
	if(duck_direction == 135)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A6EF944
		/// @DnDInput : 3
		/// @DnDParent : 336B0BAB
		/// @DnDArgument : "expr" "es.DIAG"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "var_1" "facing"
		/// @DnDArgument : "var_2" "duck_rotate"
		state = es.DIAG;
		facing = -1;
		duck_rotate = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5041B1EA
	/// @DnDParent : 6733C973
	/// @DnDArgument : "var" "duck_direction"
	/// @DnDArgument : "value" "225"
	if(duck_direction == 225)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16D4FFD7
		/// @DnDInput : 3
		/// @DnDParent : 5041B1EA
		/// @DnDArgument : "expr" "es.DIAG"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_2" "90"
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "var_1" "facing"
		/// @DnDArgument : "var_2" "duck_rotate"
		state = es.DIAG;
		facing = -1;
		duck_rotate = 90;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B1AB2FF
	/// @DnDParent : 6733C973
	/// @DnDArgument : "var" "duck_direction"
	/// @DnDArgument : "value" "315"
	if(duck_direction == 315)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7D28C3E3
		/// @DnDInput : 3
		/// @DnDParent : 7B1AB2FF
		/// @DnDArgument : "expr" "es.DIAG"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "expr_2" "270"
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "var_1" "facing"
		/// @DnDArgument : "var_2" "duck_rotate"
		state = es.DIAG;
		facing = 1;
		duck_rotate = 270;
	}
}