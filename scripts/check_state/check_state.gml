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
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 76590255
		/// @DnDParent : 39574659
		/// @DnDArgument : "expr" "ps.AIR"
		/// @DnDArgument : "var" "state"
		state = ps.AIR;
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2A2317DC
/// @DnDArgument : "funcName" "check_state_duck"
function check_state_duck() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DC88895
	/// @DnDParent : 2A2317DC
	/// @DnDArgument : "var" "abs(hsp)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" ".2"
	if(abs(hsp) < .2)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1FAB10CE
		/// @DnDParent : 5DC88895
		/// @DnDArgument : "var" "abs(vsp)"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "0.2"
		if(abs(vsp) < 0.2)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2BB731C9
			/// @DnDParent : 1FAB10CE
			/// @DnDArgument : "expr" "es.IDLE"
			/// @DnDArgument : "var" "state"
			state = es.IDLE;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0DBB619D
		/// @DnDParent : 5DC88895
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6CAA437A
			/// @DnDParent : 0DBB619D
			/// @DnDArgument : "expr" "es.FLY"
			/// @DnDArgument : "var" "state"
			state = es.FLY;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3AB0C80E
	/// @DnDParent : 2A2317DC
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F58F7DF
		/// @DnDParent : 3AB0C80E
		/// @DnDArgument : "var" "abs(vsp)"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "0.2"
		if(abs(vsp) < 0.2)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 27AA74D8
			/// @DnDParent : 1F58F7DF
			/// @DnDArgument : "expr" "es.WALK"
			/// @DnDArgument : "var" "state"
			state = es.WALK;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 73148F7C
		/// @DnDParent : 3AB0C80E
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0824BDEA
			/// @DnDParent : 73148F7C
			/// @DnDArgument : "expr" "es.DIAG"
			/// @DnDArgument : "var" "state"
			state = es.DIAG;
		}
	}
}