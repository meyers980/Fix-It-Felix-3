/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7060872A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "facing"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, facing, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 4D7BFFB5
/// @DnDArgument : "x" "25"
/// @DnDArgument : "y" "248"
/// @DnDArgument : "sprite" "s_lives"
/// @DnDSaveInfo : "sprite" "s_lives"
var l4D7BFFB5_0 = sprite_get_width(s_lives);
var l4D7BFFB5_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l4D7BFFB5_2 = __dnd_lives; l4D7BFFB5_2 > 0; --l4D7BFFB5_2) {
	draw_sprite(s_lives, 0, 25 + l4D7BFFB5_1, 248);
	l4D7BFFB5_1 += l4D7BFFB5_0;
}