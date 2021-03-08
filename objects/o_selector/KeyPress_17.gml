/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0097F226
/// @DnDArgument : "var" "alphabet_position"
/// @DnDArgument : "value" "30"
if(alphabet_position == 30)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0B28382B
	/// @DnDParent : 0097F226
	/// @DnDArgument : "code" "newname = tempname_a + tempname_b + tempname_c$(13_10)highscore_add(newname, global.p1_score);"
	newname = tempname_a + tempname_b + tempname_c
	highscore_add(newname, global.p1_score);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7CDAB7D2
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A9C5FB2
	/// @DnDParent : 7CDAB7D2
	/// @DnDArgument : "var" "initial_position"
	/// @DnDArgument : "value" "1"
	if(initial_position == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42C1FED5
		/// @DnDInput : 2
		/// @DnDParent : 3A9C5FB2
		/// @DnDArgument : "expr" "currentletter"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "tempname_a"
		/// @DnDArgument : "var_1" "initial_position"
		tempname_a = currentletter;
		initial_position += 1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 721A976F
		/// @DnDParent : 3A9C5FB2
		exit;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 174DD08E
	/// @DnDParent : 7CDAB7D2
	/// @DnDArgument : "var" "initial_position"
	/// @DnDArgument : "value" "2"
	if(initial_position == 2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 56AF33BA
		/// @DnDInput : 2
		/// @DnDParent : 174DD08E
		/// @DnDArgument : "expr" "currentletter"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "tempname_b"
		/// @DnDArgument : "var_1" "initial_position"
		tempname_b = currentletter;
		initial_position += 1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 517A0ED4
		/// @DnDParent : 174DD08E
		exit;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44AAABCD
	/// @DnDParent : 7CDAB7D2
	/// @DnDArgument : "var" "initial_position"
	/// @DnDArgument : "value" "3"
	if(initial_position == 3)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 30FAC583
		/// @DnDParent : 44AAABCD
		/// @DnDArgument : "expr" "currentletter"
		/// @DnDArgument : "var" "tempname_c"
		tempname_c = currentletter;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 536A64B2
		/// @DnDParent : 44AAABCD
		exit;
	}
}