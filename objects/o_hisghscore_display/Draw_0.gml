/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06DF94FC
/// @DnDArgument : "var" "global.freeplay"
/// @DnDArgument : "value" ""true""
if(global.freeplay == "true")
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0EAB0E1C
	/// @DnDParent : 06DF94FC
	/// @DnDArgument : "x" "144"
	/// @DnDArgument : "y" "240"
	/// @DnDArgument : "caption" ""FREEPLAY""
	draw_text(144, 240, string("FREEPLAY") + "");
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 08771023
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 202C40E2
	/// @DnDParent : 08771023
	/// @DnDArgument : "x" "144"
	/// @DnDArgument : "y" "240"
	/// @DnDArgument : "caption" ""CREDIT ""
	/// @DnDArgument : "var" "string_format(global.coins, 2, 0)"
	draw_text(144, 240, string("CREDIT ") + string(string_format(global.coins, 2, 0)));
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F7D1B26
/// @DnDArgument : "code" "draw_highscore(50, 40, 207, 200);"
draw_highscore(50, 40, 207, 200);