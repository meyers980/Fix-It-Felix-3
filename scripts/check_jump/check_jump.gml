/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 13246327
/// @DnDArgument : "funcName" "check_jump"
function check_jump() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 299BF540
	/// @DnDParent : 13246327
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 469FB159
		/// @DnDParent : 299BF540
		/// @DnDArgument : "var" "jump"
		/// @DnDArgument : "value" "true"
		if(jump == true)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 604D9C30
			/// @DnDParent : 469FB159
			/// @DnDArgument : "soundid" "sfx_felixjump"
			/// @DnDSaveInfo : "soundid" "sfx_felixjump"
			audio_play_sound(sfx_felixjump, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1D350512
			/// @DnDParent : 469FB159
			/// @DnDArgument : "expr" "-jump_spd"
			/// @DnDArgument : "var" "vsp"
			vsp = -jump_spd;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 335A967C
	/// @DnDParent : 13246327
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 356AFDDF
		/// @DnDParent : 335A967C
		/// @DnDArgument : "var" "on_swing"
		/// @DnDArgument : "value" "true"
		if(on_swing == true)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0B615C8C
			/// @DnDParent : 356AFDDF
			/// @DnDArgument : "var" "jump"
			/// @DnDArgument : "value" "true"
			if(jump == true)
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 6ED64A54
				/// @DnDParent : 0B615C8C
				/// @DnDArgument : "soundid" "sfx_felixjump"
				/// @DnDSaveInfo : "soundid" "sfx_felixjump"
				audio_play_sound(sfx_felixjump, 0, 0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 787FCE18
				/// @DnDParent : 0B615C8C
				/// @DnDArgument : "expr" "-jump_spd"
				/// @DnDArgument : "var" "vsp"
				vsp = -jump_spd;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 00A04344
		/// @DnDParent : 335A967C
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 526B3B5C
			/// @DnDParent : 00A04344
			/// @DnDArgument : "var" "on_ledge"
			/// @DnDArgument : "value" "true"
			if(on_ledge == true)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 71FEC889
				/// @DnDParent : 526B3B5C
				/// @DnDArgument : "var" "jump"
				/// @DnDArgument : "value" "true"
				if(jump == true)
				{
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 69C68C4A
					/// @DnDParent : 71FEC889
					/// @DnDArgument : "soundid" "sfx_felixjump"
					/// @DnDSaveInfo : "soundid" "sfx_felixjump"
					audio_play_sound(sfx_felixjump, 0, 0);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1094D7D1
					/// @DnDParent : 71FEC889
					/// @DnDArgument : "expr" "-jump_spd"
					/// @DnDArgument : "var" "vsp"
					vsp = -jump_spd;
				}
			}
		}
	}
}