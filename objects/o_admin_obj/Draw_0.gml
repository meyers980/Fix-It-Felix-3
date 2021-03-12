/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7E19364E
/// @DnDArgument : "expr" "room == r_coin"
if(room == r_coin)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55B29453
	/// @DnDParent : 7E19364E
	/// @DnDArgument : "var" "global.freeplay"
	/// @DnDArgument : "value" ""false""
	if(global.freeplay == "false")
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 051D063D
		/// @DnDParent : 55B29453
		/// @DnDArgument : "x" "144"
		/// @DnDArgument : "y" "240"
		/// @DnDArgument : "caption" ""CREDIT ""
		/// @DnDArgument : "var" "string_format(global.coins, 2, 0)"
		draw_text(144, 240, string("CREDIT ") + string(string_format(global.coins, 2, 0)));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0DC87748
		/// @DnDParent : 55B29453
		/// @DnDArgument : "x" "144 + 224"
		/// @DnDArgument : "y" "240"
		/// @DnDArgument : "caption" ""CREDIT ""
		/// @DnDArgument : "var" "string_format(global.coins, 2, 0)"
		draw_text(144 + 224, 240, string("CREDIT ") + string(string_format(global.coins, 2, 0)));
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 056D4A99
	/// @DnDParent : 7E19364E
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1156E138
		/// @DnDParent : 056D4A99
		/// @DnDArgument : "x" "144"
		/// @DnDArgument : "y" "240"
		/// @DnDArgument : "caption" ""FREEPLAY""
		draw_text(144, 240, string("FREEPLAY") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0F39750F
		/// @DnDParent : 056D4A99
		/// @DnDArgument : "x" "144 + 224"
		/// @DnDArgument : "y" "240"
		/// @DnDArgument : "caption" ""FREEPLAY""
		draw_text(144 + 224, 240, string("FREEPLAY") + "");
	}
}