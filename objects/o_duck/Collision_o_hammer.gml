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

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 7E43B4C4
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 469DD65D
	/// @DnDArgument : "score" "250"
	/// @DnDArgument : "score_relative" "1"
	with(o_felix) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(250);
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 585F6073
	/// @DnDParent : 469DD65D
	/// @DnDArgument : "soundid" "sfx_duckdying"
	/// @DnDSaveInfo : "soundid" "sfx_duckdying"
	audio_play_sound(sfx_duckdying, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 34FBF17B
	/// @DnDParent : 469DD65D
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "point_display"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "o_point_display"
	/// @DnDArgument : "layer" ""Instances_Front""
	/// @DnDSaveInfo : "objectid" "o_point_display"
	var point_display = instance_create_layer(x + 0, y + 0, "Instances_Front", o_point_display);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24B19342
	/// @DnDApplyTo : point_display
	/// @DnDParent : 469DD65D
	/// @DnDArgument : "expr" "250"
	/// @DnDArgument : "var" "point_value"
	with(point_display) {
	point_value = 250;
	
	}

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

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 09E9EAB7
	/// @DnDParent : 2D388448
	/// @DnDArgument : "soundid" "sfx_duck_stun"
	/// @DnDSaveInfo : "soundid" "sfx_duck_stun"
	audio_play_sound(sfx_duck_stun, 0, 0);

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