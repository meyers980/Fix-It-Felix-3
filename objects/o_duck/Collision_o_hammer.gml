/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 469DD65D
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "es.STUN"
if(state == es.STUN)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 22B2FFCD
	/// @DnDParent : 469DD65D
	/// @DnDArgument : "steps" "-1"
	alarm_set(0, -1);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 16AFE80E
	/// @DnDParent : 469DD65D
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 669D990D
	/// @DnDParent : 469DD65D
	/// @DnDArgument : "expr" "es.DEAD"
	/// @DnDArgument : "var" "state"
	state = es.DEAD;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1F8EDF19
	/// @DnDApplyTo : other
	/// @DnDParent : 469DD65D
	with(other) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D388448
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "es.DEAD"
if(!(state == es.DEAD))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60E1E5DC
	/// @DnDParent : 2D388448
	/// @DnDArgument : "expr" "es.STUN"
	/// @DnDArgument : "var" "state"
	state = es.STUN;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1CA57424
	/// @DnDParent : 2D388448
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1B89C9E3
	/// @DnDApplyTo : other
	/// @DnDParent : 2D388448
	with(other) instance_destroy();
}