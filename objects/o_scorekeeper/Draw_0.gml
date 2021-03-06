/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 48205008
/// @DnDArgument : "sprite" "s_ups"
/// @DnDSaveInfo : "sprite" "s_ups"
draw_sprite(s_ups, 0, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FBA4701
/// @DnDArgument : "var" "global.turn"
/// @DnDArgument : "value" "1"
if(global.turn == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2A7DA19E
	/// @DnDParent : 2FBA4701
	/// @DnDArgument : "x" "24"
	/// @DnDArgument : "y" "-2"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "string_format(o_felix.__dnd_score, 6, 0)"
	draw_text(24, -2,  + string(string_format(o_felix.__dnd_score, 6, 0)));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6D72B3B2
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 017BE01E
	/// @DnDParent : 6D72B3B2
	/// @DnDArgument : "x" "24"
	/// @DnDArgument : "y" "-2"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "string_format(global.p1_score, 6, 0)"
	draw_text(24, -2,  + string(string_format(global.p1_score, 6, 0)));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6D91BE9B
/// @DnDArgument : "x" "80"
/// @DnDArgument : "sprite" "s_ups"
/// @DnDArgument : "image" "2"
/// @DnDSaveInfo : "sprite" "s_ups"
draw_sprite(s_ups, 2, 80, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 789C9479
/// @DnDArgument : "x" "104"
/// @DnDArgument : "y" "-2"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "string_format(highscore_value(1), 6, 0)"
draw_text(104, -2,  + string(string_format(highscore_value(1), 6, 0)));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 668F5123
/// @DnDArgument : "var" "global.numberofplayers"
/// @DnDArgument : "value" "2"
if(global.numberofplayers == 2)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 79E5344E
	/// @DnDParent : 668F5123
	/// @DnDArgument : "x" "152"
	/// @DnDArgument : "sprite" "s_ups"
	/// @DnDArgument : "image" "1"
	/// @DnDSaveInfo : "sprite" "s_ups"
	draw_sprite(s_ups, 1, 152, 0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15260340
	/// @DnDParent : 668F5123
	/// @DnDArgument : "var" "global.turn"
	/// @DnDArgument : "value" "2"
	if(global.turn == 2)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 196F410E
		/// @DnDParent : 15260340
		/// @DnDArgument : "x" "176"
		/// @DnDArgument : "y" "-2"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" "string_format(o_felix.__dnd_score, 6, 0)"
		draw_text(176, -2,  + string(string_format(o_felix.__dnd_score, 6, 0)));
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 149934F5
	/// @DnDParent : 668F5123
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 04374BAD
		/// @DnDParent : 149934F5
		/// @DnDArgument : "x" "176"
		/// @DnDArgument : "y" "-2"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "var" "string_format(global.p2_score, 6, 0)"
		draw_text(176, -2,  + string(string_format(global.p2_score, 6, 0)));
	}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 14D95AFC
/// @DnDArgument : "x" "96"
/// @DnDArgument : "y" "247"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "(alarm[11] div 100) * 100"
draw_text(96, 247,  + string((alarm[11] div 100) * 100));