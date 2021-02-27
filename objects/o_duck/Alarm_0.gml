/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 338C7D9E
/// @DnDArgument : "speed" "walk_spd"
speed = walk_spd;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 78895EE9
/// @DnDArgument : "direction" "135,90,45,180,0,225,270,315"
direction = choose(135,90,45,180,0,225,270,315);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44E3D0B4
/// @DnDArgument : "expr" "es.IDLE"
/// @DnDArgument : "var" "state"
state = es.IDLE;