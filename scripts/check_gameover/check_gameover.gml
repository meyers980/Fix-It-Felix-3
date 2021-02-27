/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0CA0E161
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_gameover"
function check_gameover() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1366857D
	/// @DnDParent : 0CA0E161
	/// @DnDArgument : "var" "global.numberofplayers"
	/// @DnDArgument : "value" "2"
	if(global.numberofplayers == 2)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7CFC4243
		/// @DnDParent : 1366857D
		/// @DnDArgument : "var" "global.turn"
		/// @DnDArgument : "value" "1"
		if(global.turn == 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 42DE2FA9
			/// @DnDInput : 4
			/// @DnDParent : 7CFC4243
			/// @DnDArgument : "expr" "__dnd_lives"
			/// @DnDArgument : "expr_1" "__dnd_score"
			/// @DnDArgument : "expr_2" "level"
			/// @DnDArgument : "expr_3" "2"
			/// @DnDArgument : "var" "global.p1_lives"
			/// @DnDArgument : "var_1" "global.p1_score"
			/// @DnDArgument : "var_2" "global.p1_level"
			/// @DnDArgument : "var_3" "global.turn"
			global.p1_lives = __dnd_lives;
			global.p1_score = __dnd_score;
			global.p1_level = level;
			global.turn = 2;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3829C3C6
		/// @DnDParent : 1366857D
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 54EC9552
			/// @DnDInput : 4
			/// @DnDParent : 3829C3C6
			/// @DnDArgument : "expr" "__dnd_lives"
			/// @DnDArgument : "expr_1" "__dnd_score"
			/// @DnDArgument : "expr_2" "level"
			/// @DnDArgument : "expr_3" "1"
			/// @DnDArgument : "var" "global.p2_lives"
			/// @DnDArgument : "var_1" "global.p2_score"
			/// @DnDArgument : "var_2" "global.p2_level"
			/// @DnDArgument : "var_3" "global.turn"
			global.p2_lives = __dnd_lives;
			global.p2_score = __dnd_score;
			global.p2_level = level;
			global.turn = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 79F67677
	/// @DnDParent : 0CA0E161
	else
	{
		/// @DnDAction : YoYo Games.Instance Variables.If_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 11EB529D
		/// @DnDParent : 79F67677
		/// @DnDArgument : "op" "2"
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		if(__dnd_lives > 0)
		{
			/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
			/// @DnDVersion : 1
			/// @DnDHash : 1B9E7566
			/// @DnDParent : 11EB529D
			/// @DnDArgument : "lives" "-1"
			/// @DnDArgument : "lives_relative" "1"
			if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
			__dnd_lives += real(-1);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1E2CC951
			/// @DnDParent : 11EB529D
			/// @DnDArgument : "expr" "ps.IDLE"
			/// @DnDArgument : "var" "state"
			state = ps.IDLE;
		
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 7A5C1D8D
			/// @DnDParent : 11EB529D
			/// @DnDArgument : "room" "r_p1start"
			/// @DnDSaveInfo : "room" "r_p1start"
			room_goto(r_p1start);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7B61BB91
		/// @DnDParent : 79F67677
		else
		{
		
		}
	}
}