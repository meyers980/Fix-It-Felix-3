/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7BFCC2BC
/// @DnDArgument : "font" "score_font"
/// @DnDSaveInfo : "font" "score_font"
draw_set_font(score_font);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 04623F53
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "point_value"
draw_text(x + 0, y + 0,  + string(point_value));

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 28AD528E
/// @DnDArgument : "font" "arcade_font"
/// @DnDSaveInfo : "font" "arcade_font"
draw_set_font(arcade_font);