/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3A39A602
/// @DnDArgument : "code" "newname = tempname_a + tempname_b + tempname_c$(13_10)highscore_add(newname, o_player1.__dnd_score);"
newname = tempname_a + tempname_b + tempname_c
highscore_add(newname, o_player1.__dnd_score);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0FC6791C
/// @DnDArgument : "function" "destroy_players"
destroy_players();

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 52B4556E
/// @DnDArgument : "room" "r_scoredisplay"
/// @DnDSaveInfo : "room" "r_scoredisplay"
room_goto(r_scoredisplay);