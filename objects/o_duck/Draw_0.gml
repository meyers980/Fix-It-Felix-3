/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5B7712B4
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "facing"
/// @DnDArgument : "rot" "duck_rotate"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, facing, 1, duck_rotate, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 16444772
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "direction"
draw_text(x + 0, y + -16,  + string(direction));