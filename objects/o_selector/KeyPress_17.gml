/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0097F226
/// @DnDArgument : "var" "alphabet_position"
/// @DnDArgument : "value" "30"
if(alphabet_position == 30)
{
	/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
	/// @DnDVersion : 1
	/// @DnDHash : 44E2D8B4
	/// @DnDParent : 0097F226
	/// @DnDArgument : "var" "room_named"
	/// @DnDArgument : "var_temp" "1"
	var room_named = room;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44D76CC0
	/// @DnDParent : 0097F226
	/// @DnDArgument : "var" "room_named"
	/// @DnDArgument : "value" "r_p1score_entry"
	if(room_named == r_p1score_entry)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 0B28382B
		/// @DnDParent : 44D76CC0
		/// @DnDArgument : "code" "newname = tempname_a + tempname_b + tempname_c$(13_10)highscore_add(newname, global.p1_score);"
		newname = tempname_a + tempname_b + tempname_c
		highscore_add(newname, global.p1_score);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4009B35B
		/// @DnDParent : 44D76CC0
		/// @DnDArgument : "var" "global.p2_score"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "highscore_value(10)"
		if(global.p2_score > highscore_value(10))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 7D19685F
			/// @DnDParent : 4009B35B
			/// @DnDArgument : "room" "r_p2score_entry"
			/// @DnDSaveInfo : "room" "r_p2score_entry"
			room_goto(r_p2score_entry);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 12F6C6CF
		/// @DnDParent : 44D76CC0
		else
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 268A42B6
			/// @DnDParent : 12F6C6CF
			/// @DnDArgument : "room" "r_score_display"
			/// @DnDSaveInfo : "room" "r_score_display"
			room_goto(r_score_display);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C1C239E
	/// @DnDParent : 0097F226
	/// @DnDArgument : "var" "room_named"
	/// @DnDArgument : "value" "r_p2score_entry"
	if(room_named == r_p2score_entry)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 6245208E
		/// @DnDParent : 7C1C239E
		/// @DnDArgument : "code" "newname = tempname_a + tempname_b + tempname_c$(13_10)highscore_add(newname, global.p2_score);"
		newname = tempname_a + tempname_b + tempname_c
		highscore_add(newname, global.p2_score);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 715DF217
		/// @DnDParent : 7C1C239E
		/// @DnDArgument : "room" "r_score_display"
		/// @DnDSaveInfo : "room" "r_score_display"
		room_goto(r_score_display);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05287363
/// @DnDArgument : "var" "alphabet_position"
/// @DnDArgument : "value" "29"
if(alphabet_position == 29)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E20B850
	/// @DnDParent : 05287363
	/// @DnDArgument : "var" "initial_position"
	/// @DnDArgument : "value" "2"
	if(initial_position == 2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B5B6FE4
		/// @DnDInput : 2
		/// @DnDParent : 4E20B850
		/// @DnDArgument : "expr" ""_""
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "tempname_a"
		/// @DnDArgument : "var_1" "initial_position"
		tempname_a = "_";
		initial_position += -1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 0856DFE2
		/// @DnDParent : 4E20B850
		exit;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10E3847F
	/// @DnDParent : 05287363
	/// @DnDArgument : "var" "initial_position"
	/// @DnDArgument : "value" "3"
	if(initial_position == 3)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 262B0C58
		/// @DnDInput : 2
		/// @DnDParent : 10E3847F
		/// @DnDArgument : "expr" ""_""
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "tempname_b"
		/// @DnDArgument : "var_1" "initial_position"
		tempname_b = "_";
		initial_position += -1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 6991F319
		/// @DnDParent : 10E3847F
		exit;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A500B07
	/// @DnDParent : 05287363
	/// @DnDArgument : "var" "initial_position"
	/// @DnDArgument : "value" "4"
	if(initial_position == 4)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12988299
		/// @DnDInput : 2
		/// @DnDParent : 0A500B07
		/// @DnDArgument : "expr" ""_""
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "tempname_c"
		/// @DnDArgument : "var_1" "initial_position"
		tempname_c = "_";
		initial_position += -1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 0686315B
		/// @DnDParent : 0A500B07
		exit;
	}
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
		/// @DnDInput : 2
		/// @DnDParent : 44AAABCD
		/// @DnDArgument : "expr" "currentletter"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "tempname_c"
		/// @DnDArgument : "var_1" "initial_position"
		tempname_c = currentletter;
		initial_position += 1;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 536A64B2
		/// @DnDParent : 44AAABCD
		exit;
	}
}