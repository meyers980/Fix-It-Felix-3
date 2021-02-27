/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44E6156E
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "o_ralph.x"
if(x < o_ralph.x)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17A90455
	/// @DnDParent : 44E6156E
	/// @DnDArgument : "expr" "point_distance(x, y, o_ralph.x -22, o_ralph.y - 20) / 3"
	/// @DnDArgument : "var" "change_direction_clock"
	change_direction_clock = point_distance(x, y, o_ralph.x -22, o_ralph.y - 20) / 3;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 33C5CEB9
	/// @DnDParent : 44E6156E
	/// @DnDArgument : "steps" "change_direction_clock"
	alarm_set(0, change_direction_clock);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 51289863
	/// @DnDParent : 44E6156E
	/// @DnDArgument : "speed" "3"
	speed = 3;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 537629C6
	/// @DnDParent : 44E6156E
	/// @DnDArgument : "x" "o_ralph.x -22"
	/// @DnDArgument : "y" "o_ralph.y - 20"
	direction = point_direction(x, y, o_ralph.x -22, o_ralph.y - 20);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 22E07F8C
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23975213
	/// @DnDParent : 22E07F8C
	/// @DnDArgument : "expr" "point_distance(x, y, o_ralph.x +22, o_ralph.y - 20) / 3"
	/// @DnDArgument : "var" "change_direction_clock"
	change_direction_clock = point_distance(x, y, o_ralph.x +22, o_ralph.y - 20) / 3;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2081EDD9
	/// @DnDParent : 22E07F8C
	/// @DnDArgument : "steps" "change_direction_clock"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, change_direction_clock);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2F40133D
	/// @DnDParent : 22E07F8C
	/// @DnDArgument : "speed" "3"
	speed = 3;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4EF1259C
	/// @DnDParent : 22E07F8C
	/// @DnDArgument : "x" "o_ralph.x +22"
	/// @DnDArgument : "y" "o_ralph.y - 20"
	direction = point_direction(x, y, o_ralph.x +22, o_ralph.y - 20);
}