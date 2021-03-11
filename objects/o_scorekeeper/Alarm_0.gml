/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 54CD86FA
/// @DnDArgument : "var" "key_count"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "o_hammer_key"
/// @DnDSaveInfo : "object" "o_hammer_key"
var key_count = instance_number(o_hammer_key);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6BD3F1F5
/// @DnDArgument : "var" "key_count"
/// @DnDArgument : "op" "3"
if(key_count <= 0)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 46FE67FE
	/// @DnDParent : 6BD3F1F5
	/// @DnDArgument : "function" "destroy_enemies"
	destroy_enemies();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E268D07
	/// @DnDParent : 6BD3F1F5
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "level_over"
	level_over = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 220D64CF
	/// @DnDParent : 6BD3F1F5
	/// @DnDArgument : "steps" "(alarm[11] div 100) * 100"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, (alarm[11] div 100) * 100);

	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 568019EB
	/// @DnDParent : 6BD3F1F5
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5364B44D
	/// @DnDParent : 6BD3F1F5
	/// @DnDArgument : "soundid" "sfx_levelclear"
	/// @DnDSaveInfo : "soundid" "sfx_levelclear"
	audio_play_sound(sfx_levelclear, 0, 0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7C19E313
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0BDC6E49
	/// @DnDParent : 7C19E313
	/// @DnDArgument : "steps" "15"
	alarm_set(0, 15);

	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 686A3332
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 7C19E313
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "global.freelife"
	with(o_felix) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	var l686A3332_0 = __dnd_score > global.freelife;
	}
	if(l686A3332_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6060B023
		/// @DnDParent : 686A3332
		/// @DnDArgument : "var" "global.turn"
		/// @DnDArgument : "value" "1"
		if(global.turn == 1)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0F9F7391
			/// @DnDParent : 6060B023
			/// @DnDArgument : "var" "global.p1_freelife"
			/// @DnDArgument : "value" "false"
			if(global.p1_freelife == false)
			{
				/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
				/// @DnDVersion : 1
				/// @DnDHash : 1D788C74
				/// @DnDApplyTo : {o_felix}
				/// @DnDParent : 0F9F7391
				/// @DnDArgument : "lives" "1"
				/// @DnDArgument : "lives_relative" "1"
				with(o_felix) {
				if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
				__dnd_lives += real(1);
				}
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 0705D165
				/// @DnDParent : 0F9F7391
				/// @DnDArgument : "soundid" "sfx_freelife"
				/// @DnDSaveInfo : "soundid" "sfx_freelife"
				audio_play_sound(sfx_freelife, 0, 0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 306C7D81
				/// @DnDParent : 0F9F7391
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "global.p1_freelife"
				global.p1_freelife = true;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 25BBC4AC
		/// @DnDParent : 686A3332
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5FB5D721
			/// @DnDParent : 25BBC4AC
			/// @DnDArgument : "var" "global.p2_freelife"
			/// @DnDArgument : "value" "false"
			if(global.p2_freelife == false)
			{
				/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
				/// @DnDVersion : 1
				/// @DnDHash : 3BA8B5F1
				/// @DnDApplyTo : {o_felix}
				/// @DnDParent : 5FB5D721
				/// @DnDArgument : "lives" "1"
				/// @DnDArgument : "lives_relative" "1"
				with(o_felix) {
				if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
				__dnd_lives += real(1);
				}
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 557BE8EC
				/// @DnDParent : 5FB5D721
				/// @DnDArgument : "soundid" "sfx_freelife"
				/// @DnDSaveInfo : "soundid" "sfx_freelife"
				audio_play_sound(sfx_freelife, 0, 0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1C0E150B
				/// @DnDParent : 5FB5D721
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "global.p2_freelife"
				global.p2_freelife = true;
			}
		}
	}
}