/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 24534AF8
/// @DnDArgument : "var" "x"
/// @DnDArgument : "value" "448"
if(x == 448)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 03FEABBB
	/// @DnDParent : 24534AF8
	/// @DnDArgument : "code" "newname = tempname_a + tempname_b + tempname_c$(13_10)highscore_add(newname, o_player1.__dnd_score);"
	newname = tempname_a + tempname_b + tempname_c
	highscore_add(newname, o_player1.__dnd_score);

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6B7880B9
	/// @DnDParent : 24534AF8
	/// @DnDArgument : "obj" "o_score_entry_player2"
	/// @DnDSaveInfo : "obj" "o_score_entry_player2"
	var l6B7880B9_0 = false;
	l6B7880B9_0 = instance_exists(o_score_entry_player2);
	if(l6B7880B9_0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 43CB87E8
		/// @DnDParent : 6B7880B9
		instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 058D6537
	/// @DnDParent : 24534AF8
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 4D58C8CD
		/// @DnDParent : 058D6537
		/// @DnDArgument : "function" "destroy_players"
		destroy_players();
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 1175A382
		/// @DnDParent : 058D6537
		/// @DnDArgument : "room" "r_scoredisplay"
		/// @DnDSaveInfo : "room" "r_scoredisplay"
		room_goto(r_scoredisplay);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3DD13617
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44982875
	/// @DnDParent : 3DD13617
	/// @DnDArgument : "var" "initial_position"
	/// @DnDArgument : "value" "1"
	if(initial_position == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 614788EE
		/// @DnDInput : 2
		/// @DnDParent : 44982875
		/// @DnDArgument : "expr" "currentletter"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "tempname_a"
		/// @DnDArgument : "var_1" "initial_position"
		tempname_a = currentletter;
		initial_position += 1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 068C0525
		/// @DnDParent : 44982875
		exit;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F33228A
	/// @DnDParent : 3DD13617
	/// @DnDArgument : "var" "initial_position"
	/// @DnDArgument : "value" "2"
	if(initial_position == 2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10A57BDA
		/// @DnDInput : 2
		/// @DnDParent : 0F33228A
		/// @DnDArgument : "expr" "currentletter"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "tempname_b"
		/// @DnDArgument : "var_1" "initial_position"
		tempname_b = currentletter;
		initial_position += 1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 50E2E407
		/// @DnDParent : 0F33228A
		exit;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F87413A
	/// @DnDParent : 3DD13617
	/// @DnDArgument : "var" "initial_position"
	/// @DnDArgument : "value" "3"
	if(initial_position == 3)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 400AC6D3
		/// @DnDParent : 1F87413A
		/// @DnDArgument : "expr" "currentletter"
		/// @DnDArgument : "var" "tempname_c"
		tempname_c = currentletter;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 1544AEFD
		/// @DnDParent : 1F87413A
		exit;
	}
}