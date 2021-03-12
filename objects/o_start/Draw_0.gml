/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 2878279F
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FF9F302
/// @DnDArgument : "var" "global.coins"
if(global.coins == 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 20FB9BD0
	/// @DnDParent : 0FF9F302
	/// @DnDArgument : "x" "112"
	/// @DnDArgument : "y" "8"
	/// @DnDArgument : "caption" ""I N S E R T  C O I N ""
	draw_text(112, 8, string("I N S E R T  C O I N ") + "");

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0E5C5319
	/// @DnDParent : 0FF9F302
	/// @DnDArgument : "x" "112 + 224"
	/// @DnDArgument : "y" "8"
	/// @DnDArgument : "caption" ""I N S E R T  C O I N ""
	draw_text(112 + 224, 8, string("I N S E R T  C O I N ") + "");
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7555711C
/// @DnDArgument : "var" "global.coins"
/// @DnDArgument : "value" "1"
if(global.coins == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0592B4A5
	/// @DnDParent : 7555711C
	/// @DnDArgument : "x" "112"
	/// @DnDArgument : "y" "8"
	/// @DnDArgument : "caption" ""P R E S S\n1  S T A R T""
	draw_text(112, 8, string("P R E S S\n1  S T A R T") + "");

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 687953FB
	/// @DnDParent : 7555711C
	/// @DnDArgument : "x" "112 + 224"
	/// @DnDArgument : "y" "8"
	/// @DnDArgument : "caption" ""P R E S S\n1  S T A R T""
	draw_text(112 + 224, 8, string("P R E S S\n1  S T A R T") + "");
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76209F67
/// @DnDArgument : "var" "global.coins"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.coins > 1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 473CD58D
	/// @DnDParent : 76209F67
	/// @DnDArgument : "x" "112"
	/// @DnDArgument : "y" "8"
	/// @DnDArgument : "caption" ""P R E S S\n1  O R  2  S T A R T""
	draw_text(112, 8, string("P R E S S\n1  O R  2  S T A R T") + "");

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 46FCFCBB
	/// @DnDParent : 76209F67
	/// @DnDArgument : "x" "112 + 224"
	/// @DnDArgument : "y" "8"
	/// @DnDArgument : "caption" ""P R E S S\n1  O R  2  S T A R T""
	draw_text(112 + 224, 8, string("P R E S S\n1  O R  2  S T A R T") + "");
}

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 3DA15D7A
draw_set_halign(fa_left);
draw_set_valign(fa_top);