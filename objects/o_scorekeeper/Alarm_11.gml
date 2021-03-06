/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 052CFC0B
/// @DnDArgument : "obj" "o_ralph"
/// @DnDSaveInfo : "obj" "o_ralph"
var l052CFC0B_0 = false;
l052CFC0B_0 = instance_exists(o_ralph);
if(l052CFC0B_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10DEB1FB
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 052CFC0B
	/// @DnDArgument : "expr" "ps.DEAD"
	/// @DnDArgument : "var" "state"
	with(o_felix) {
	state = ps.DEAD;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 46A2DC2D
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 052CFC0B
	/// @DnDArgument : "steps" "120"
	/// @DnDArgument : "alarm" "11"
	with(o_felix) {
	alarm_set(11, 120);
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 230CD8EA
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 052CFC0B
	/// @DnDArgument : "var" "__dnd_lives"
	/// @DnDArgument : "op" "2"
	with(o_felix) var l230CD8EA_0 = __dnd_lives > 0;
	if(l230CD8EA_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 5AD48532
		/// @DnDParent : 230CD8EA
		/// @DnDArgument : "soundid" "sfx_felixhit"
		/// @DnDSaveInfo : "soundid" "sfx_felixhit"
		audio_play_sound(sfx_felixhit, 0, 0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1C5253F0
	/// @DnDParent : 052CFC0B
	else
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 7DFF2FCB
		/// @DnDParent : 1C5253F0
		/// @DnDArgument : "soundid" "sfx_felixgameover"
		/// @DnDSaveInfo : "soundid" "sfx_felixgameover"
		audio_play_sound(sfx_felixgameover, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 15716376
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 61D9C1C9
	/// @DnDParent : 15716376
	/// @DnDArgument : "steps" "120"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 120);
}