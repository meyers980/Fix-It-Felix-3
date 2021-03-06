/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 35500C22
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "calc_damage_felix"
function calc_damage_felix() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 72A9F5F8
	/// @DnDApplyTo : other
	/// @DnDParent : 35500C22
	/// @DnDArgument : "var" "state"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "ps.DEAD"
	with(other) var l72A9F5F8_0 = state == ps.DEAD;
	if(!l72A9F5F8_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 46F8BD72
		/// @DnDApplyTo : other
		/// @DnDParent : 72A9F5F8
		/// @DnDArgument : "expr" "ps.DEAD"
		/// @DnDArgument : "var" "state"
		with(other) {
		state = ps.DEAD;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 6D1E8066
		/// @DnDApplyTo : other
		/// @DnDParent : 72A9F5F8
		/// @DnDArgument : "steps" "120"
		/// @DnDArgument : "alarm" "11"
		with(other) {
		alarm_set(11, 120);
		
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0E98E422
		/// @DnDApplyTo : {o_felix}
		/// @DnDParent : 72A9F5F8
		/// @DnDArgument : "var" "__dnd_lives"
		/// @DnDArgument : "op" "2"
		with(o_felix) var l0E98E422_0 = __dnd_lives > 0;
		if(l0E98E422_0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 65D11D81
			/// @DnDParent : 0E98E422
			/// @DnDArgument : "soundid" "sfx_felixhit"
			/// @DnDSaveInfo : "soundid" "sfx_felixhit"
			audio_play_sound(sfx_felixhit, 0, 0);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3CF23C08
		/// @DnDParent : 72A9F5F8
		else
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 1E80A2F2
			/// @DnDParent : 3CF23C08
			/// @DnDArgument : "soundid" "sfx_felixgameover"
			/// @DnDSaveInfo : "soundid" "sfx_felixgameover"
			audio_play_sound(sfx_felixgameover, 0, 0);
		}
	}
}