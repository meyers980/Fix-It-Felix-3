/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 17A90455
/// @DnDArgument : "expr" "point_distance(x, y, o_ralph.x -22, o_ralph.y - 20) / 3"
/// @DnDArgument : "var" "change_direction_clock"
change_direction_clock = point_distance(x, y, o_ralph.x -22, o_ralph.y - 20) / 3;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 33C5CEB9
/// @DnDArgument : "steps" "change_direction_clock"
alarm_set(0, change_direction_clock);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 51289863
/// @DnDArgument : "speed" "3"
speed = 3;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 537629C6
/// @DnDArgument : "x" "o_ralph.x -22"
/// @DnDArgument : "y" "o_ralph.y - 20"
direction = point_direction(x, y, o_ralph.x -22, o_ralph.y - 20);