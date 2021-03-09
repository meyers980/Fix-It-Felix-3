/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 212F03C6
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3FFF2E97
/// @DnDArgument : "x" "112"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "tempname_a"
draw_text(112, 30,  + string(tempname_a));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 62ADB6C4
/// @DnDArgument : "x" "120"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "tempname_b"
draw_text(120, 30,  + string(tempname_b));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 10171A43
/// @DnDArgument : "x" "128"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "tempname_c"
draw_text(128, 30,  + string(tempname_c));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3D62790B
/// @DnDArgument : "x" "152"
/// @DnDArgument : "y" "102"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "round(alarm[0] / 60)"
draw_text(152, 102,  + string(round(alarm[0] / 60)));