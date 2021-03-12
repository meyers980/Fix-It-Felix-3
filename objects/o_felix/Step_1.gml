/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 486619D5
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DEAD"
if(!(state == ps.DEAD))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D3F7056
	/// @DnDParent : 486619D5
	/// @DnDArgument : "var" "vsp"
	/// @DnDArgument : "op" "1"
	if(vsp < 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7E8509A4
		/// @DnDParent : 3D3F7056
		/// @DnDArgument : "var" "on_swing"
		/// @DnDArgument : "value" "false"
		if(on_swing == false)
		{
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 33AB577B
			/// @DnDParent : 7E8509A4
			exit;
		}
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 24A80C76
	/// @DnDParent : 486619D5
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
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0CDCBD36
		/// @DnDParent : 24A80C76
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "rider.y"
		if(y < rider.y)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6B72E742
			/// @DnDInput : 3
			/// @DnDParent : 0CDCBD36
			/// @DnDArgument : "expr" "rider.y - 3"
			/// @DnDArgument : "expr_1" "true"
			/// @DnDArgument : "expr_2" "rider.speed"
			/// @DnDArgument : "var" "y"
			/// @DnDArgument : "var_1" "on_swing"
			/// @DnDArgument : "var_2" "vsp"
			y = rider.y - 3;
			on_swing = true;
			vsp = rider.speed;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 679A69D8
	/// @DnDParent : 486619D5
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55BD424B
		/// @DnDParent : 679A69D8
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "on_swing"
		on_swing = false;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 70DF8D5F
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DEAD"
if(!(state == ps.DEAD))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36BBEE01
	/// @DnDParent : 70DF8D5F
	/// @DnDArgument : "var" "vsp"
	/// @DnDArgument : "op" "1"
	if(vsp < 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42724C6B
		/// @DnDParent : 36BBEE01
		/// @DnDArgument : "var" "on_ledge"
		/// @DnDArgument : "value" "false"
		if(on_ledge == false)
		{
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 418DC7FF
			/// @DnDParent : 42724C6B
			exit;
		}
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 7DC779C2
	/// @DnDParent : 70DF8D5F
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "rider"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "object" "o_semisolid"
	/// @DnDSaveInfo : "object" "o_semisolid"
	var l7DC779C2_0 = instance_place(x + 0, y + 1, o_semisolid);
	var rider = l7DC779C2_0;
	if ((l7DC779C2_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DA70D79
		/// @DnDParent : 7DC779C2
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "rider.y"
		if(y < rider.y)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 57B42F61
			/// @DnDInput : 3
			/// @DnDParent : 1DA70D79
			/// @DnDArgument : "expr" "rider.y - 3"
			/// @DnDArgument : "expr_1" "true"
			/// @DnDArgument : "expr_2" "rider.speed"
			/// @DnDArgument : "var" "y"
			/// @DnDArgument : "var_1" "on_ledge"
			/// @DnDArgument : "var_2" "vsp"
			y = rider.y - 3;
			on_ledge = true;
			vsp = rider.speed;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 45141925
	/// @DnDParent : 70DF8D5F
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7F5A67CD
		/// @DnDParent : 45141925
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "on_ledge"
		on_ledge = false;
	}
}