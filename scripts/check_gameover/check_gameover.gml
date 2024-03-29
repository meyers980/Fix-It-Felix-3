/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1E761B4B
/// @DnDArgument : "funcName" "check_gameover"
function check_gameover() 
{
	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 577B191E
	/// @DnDParent : 1E761B4B
	audio_stop_all();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1366857D
	/// @DnDParent : 1E761B4B
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
			/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
			/// @DnDVersion : 1
			/// @DnDHash : 16F31EDD
			/// @DnDParent : 7CFC4243
			/// @DnDArgument : "lives" "-1"
			/// @DnDArgument : "lives_relative" "1"
			if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
			__dnd_lives += real(-1);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 42DE2FA9
			/// @DnDInput : 5
			/// @DnDParent : 7CFC4243
			/// @DnDArgument : "expr" "__dnd_lives"
			/// @DnDArgument : "expr_1" "__dnd_score"
			/// @DnDArgument : "expr_2" "level"
			/// @DnDArgument : "expr_3" "2"
			/// @DnDArgument : "expr_4" "room"
			/// @DnDArgument : "var" "global.p1_lives"
			/// @DnDArgument : "var_1" "global.p1_score"
			/// @DnDArgument : "var_2" "global.p1_level"
			/// @DnDArgument : "var_3" "global.turn"
			/// @DnDArgument : "var_4" "global.p1_room"
			global.p1_lives = __dnd_lives;
			global.p1_score = __dnd_score;
			global.p1_level = level;
			global.turn = 2;
			global.p1_room = room;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 770F231C
			/// @DnDParent : 7CFC4243
			/// @DnDArgument : "var" "global.p2_lives"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "-1"
			if(global.p2_lives <= -1)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1E4A24D5
				/// @DnDParent : 770F231C
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "global.turn"
				global.turn = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 35C348DC
			/// @DnDParent : 7CFC4243
			/// @DnDArgument : "var" "global.p1_lives + global.p2_lives"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "-2"
			if(global.p1_lives + global.p2_lives <= -2)
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 1000245C
				/// @DnDParent : 35C348DC
				/// @DnDArgument : "function" "calc_gameover"
				calc_gameover();
			
				/// @DnDAction : YoYo Games.Common.Exit_Event
				/// @DnDVersion : 1
				/// @DnDHash : 0B9F2F2B
				/// @DnDParent : 35C348DC
				exit;
			}
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 573EBA8D
			/// @DnDParent : 7CFC4243
			/// @DnDArgument : "x" "-85"
			/// @DnDArgument : "y" "-85"
			x = -85;
			y = -85;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2EBBFCC3
			/// @DnDParent : 7CFC4243
			/// @DnDArgument : "var" "global.p2_lives"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "-1"
			if(global.p2_lives > -1)
			{
				/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 66D00FD1
				/// @DnDParent : 2EBBFCC3
				/// @DnDArgument : "room" "r_p2start"
				/// @DnDSaveInfo : "room" "r_p2start"
				room_goto(r_p2start);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 52C4BBF6
			/// @DnDParent : 7CFC4243
			else
			{
				/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 5ED63965
				/// @DnDParent : 52C4BBF6
				/// @DnDArgument : "room" "r_p1start"
				/// @DnDSaveInfo : "room" "r_p1start"
				room_goto(r_p1start);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3829C3C6
		/// @DnDParent : 1366857D
		else
		{
			/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
			/// @DnDVersion : 1
			/// @DnDHash : 06150AF1
			/// @DnDParent : 3829C3C6
			/// @DnDArgument : "lives" "-1"
			/// @DnDArgument : "lives_relative" "1"
			if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
			__dnd_lives += real(-1);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A065839
			/// @DnDInput : 5
			/// @DnDParent : 3829C3C6
			/// @DnDArgument : "expr" "__dnd_lives"
			/// @DnDArgument : "expr_1" "__dnd_score"
			/// @DnDArgument : "expr_2" "level"
			/// @DnDArgument : "expr_3" "1"
			/// @DnDArgument : "expr_4" "room"
			/// @DnDArgument : "var" "global.p2_lives"
			/// @DnDArgument : "var_1" "global.p2_score"
			/// @DnDArgument : "var_2" "global.p2_level"
			/// @DnDArgument : "var_3" "global.turn"
			/// @DnDArgument : "var_4" "global.p2_room"
			global.p2_lives = __dnd_lives;
			global.p2_score = __dnd_score;
			global.p2_level = level;
			global.turn = 1;
			global.p2_room = room;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1DC8DA3A
			/// @DnDParent : 3829C3C6
			/// @DnDArgument : "var" "global.p1_lives"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "-1"
			if(global.p1_lives <= -1)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0F7A0A9D
				/// @DnDParent : 1DC8DA3A
				/// @DnDArgument : "expr" "2"
				/// @DnDArgument : "var" "global.turn"
				global.turn = 2;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 112FBF37
			/// @DnDParent : 3829C3C6
			/// @DnDArgument : "var" "global.p1_lives + global.p2_lives"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "-2"
			if(global.p1_lives + global.p2_lives <= -2)
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 086DBBC5
				/// @DnDParent : 112FBF37
				/// @DnDArgument : "function" "calc_gameover"
				calc_gameover();
			
				/// @DnDAction : YoYo Games.Common.Exit_Event
				/// @DnDVersion : 1
				/// @DnDHash : 4706910E
				/// @DnDParent : 112FBF37
				exit;
			}
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 05393264
			/// @DnDParent : 3829C3C6
			/// @DnDArgument : "x" "-85"
			/// @DnDArgument : "y" "-85"
			x = -85;
			y = -85;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 627D0DAF
			/// @DnDParent : 3829C3C6
			/// @DnDArgument : "var" "global.p1_lives"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "-1"
			if(global.p1_lives > -1)
			{
				/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 791AD5E4
				/// @DnDParent : 627D0DAF
				/// @DnDArgument : "room" "r_p1start"
				/// @DnDSaveInfo : "room" "r_p1start"
				room_goto(r_p1start);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 3F6F479B
			/// @DnDParent : 3829C3C6
			else
			{
				/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 6445BC9A
				/// @DnDParent : 3F6F479B
				/// @DnDArgument : "room" "r_p2start"
				/// @DnDSaveInfo : "room" "r_p2start"
				room_goto(r_p2start);
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 79F67677
	/// @DnDParent : 1E761B4B
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
			/// @DnDHash : 0C1AF27D
			/// @DnDInput : 5
			/// @DnDParent : 11EB529D
			/// @DnDArgument : "expr" "__dnd_lives"
			/// @DnDArgument : "expr_1" "__dnd_score"
			/// @DnDArgument : "expr_2" "level"
			/// @DnDArgument : "expr_3" "1"
			/// @DnDArgument : "expr_4" "room"
			/// @DnDArgument : "var" "global.p1_lives"
			/// @DnDArgument : "var_1" "global.p1_score"
			/// @DnDArgument : "var_2" "global.p1_level"
			/// @DnDArgument : "var_3" "global.turn"
			/// @DnDArgument : "var_4" "global.p1_room"
			global.p1_lives = __dnd_lives;
			global.p1_score = __dnd_score;
			global.p1_level = level;
			global.turn = 1;
			global.p1_room = room;
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 2545678C
			/// @DnDParent : 11EB529D
			/// @DnDArgument : "x" "-85"
			/// @DnDArgument : "y" "-85"
			x = -85;
			y = -85;
		
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
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4A5A9D9F
			/// @DnDInput : 5
			/// @DnDParent : 7B61BB91
			/// @DnDArgument : "expr" "__dnd_lives"
			/// @DnDArgument : "expr_1" "__dnd_score"
			/// @DnDArgument : "expr_2" "level"
			/// @DnDArgument : "expr_3" "1"
			/// @DnDArgument : "expr_4" "room"
			/// @DnDArgument : "var" "global.p1_lives"
			/// @DnDArgument : "var_1" "global.p1_score"
			/// @DnDArgument : "var_2" "global.p1_level"
			/// @DnDArgument : "var_3" "global.turn"
			/// @DnDArgument : "var_4" "global.p1_room"
			global.p1_lives = __dnd_lives;
			global.p1_score = __dnd_score;
			global.p1_level = level;
			global.turn = 1;
			global.p1_room = room;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 6A121911
			/// @DnDParent : 7B61BB91
			/// @DnDArgument : "function" "calc_gameover"
			calc_gameover();
		}
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1F97443B
/// @DnDArgument : "funcName" "calc_gameover"
function calc_gameover() 
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5D28D031
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 1F97443B
	with(o_felix) instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2007B28E
	/// @DnDParent : 1F97443B
	/// @DnDArgument : "var" "global.p1_score"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "highscore_value(10)"
	if(global.p1_score > highscore_value(10))
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 64504CDA
		/// @DnDParent : 2007B28E
		/// @DnDArgument : "room" "r_p1score_entry"
		/// @DnDSaveInfo : "room" "r_p1score_entry"
		room_goto(r_p1score_entry);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0B7FEFFA
	/// @DnDParent : 1F97443B
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B1F246D
		/// @DnDParent : 0B7FEFFA
		/// @DnDArgument : "var" "global.p2_score"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "highscore_value(10)"
		if(global.p2_score > highscore_value(10))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 745A9932
			/// @DnDParent : 1B1F246D
			/// @DnDArgument : "room" "r_p2score_entry"
			/// @DnDSaveInfo : "room" "r_p2score_entry"
			room_goto(r_p2score_entry);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 62C2C7CF
		/// @DnDParent : 0B7FEFFA
		else
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 24370E18
			/// @DnDParent : 62C2C7CF
			/// @DnDArgument : "room" "r_score_display"
			/// @DnDSaveInfo : "room" "r_score_display"
			room_goto(r_score_display);
		}
	}
}