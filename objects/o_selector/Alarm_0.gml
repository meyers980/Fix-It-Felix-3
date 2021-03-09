/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 1FC0C2F0
/// @DnDArgument : "var" "room_named"
/// @DnDArgument : "var_temp" "1"
var room_named = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 69255CCF
/// @DnDArgument : "var" "room_named"
/// @DnDArgument : "value" "r_p1score_entry"
if(room_named == r_p1score_entry)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3BBADDD8
	/// @DnDParent : 69255CCF
	/// @DnDArgument : "code" "newname = tempname_a + tempname_b + tempname_c$(13_10)highscore_add(newname, global.p1_score);"
	newname = tempname_a + tempname_b + tempname_c
	highscore_add(newname, global.p1_score);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B58378F
/// @DnDArgument : "var" "room_named"
/// @DnDArgument : "value" "r_p2score_entry"
if(room_named == r_p2score_entry)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0B96BB1E
	/// @DnDParent : 1B58378F
	/// @DnDArgument : "code" "newname = tempname_a + tempname_b + tempname_c$(13_10)highscore_add(newname, global.p2_score);"
	newname = tempname_a + tempname_b + tempname_c
	highscore_add(newname, global.p2_score);
}