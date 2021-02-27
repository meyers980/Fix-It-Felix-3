/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 30C7F208
/// @DnDArgument : "expr" "r.ATTACKRIGHT"
/// @DnDArgument : "var" "o_ralph.state"
o_ralph.state = r.ATTACKRIGHT;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 11C4BB53
/// @DnDArgument : "speed" "3"
speed = 3;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 7FB7FD96
/// @DnDArgument : "x" "o_felix.x"
/// @DnDArgument : "y" "o_felix.y"
direction = point_direction(x, y, o_felix.x, o_felix.y);