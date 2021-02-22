/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 755ADFF4
/// @DnDArgument : "expr" "r.ATTACKLEFT"
/// @DnDArgument : "var" "o_ralph.state"
o_ralph.state = r.ATTACKLEFT;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 04E8A14D
/// @DnDArgument : "speed" "3"
speed = 3;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 3DCBF404
/// @DnDArgument : "x" "o_felix.x"
/// @DnDArgument : "y" "o_felix.y"
direction = point_direction(x, y, o_felix.x, o_felix.y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 662D8FCB
/// @DnDDisabled : 1
/// @DnDArgument : "angle" "point_direction(x, y, o_felix.x, o_felix.y);"