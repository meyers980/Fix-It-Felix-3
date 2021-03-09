/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 00A7585E
/// @DnDArgument : "steps" "600"
alarm_set(0, 600);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 452C911E
/// @DnDArgument : "soundid" "sfx_highscore_displayed"
/// @DnDSaveInfo : "soundid" "sfx_highscore_displayed"
audio_play_sound(sfx_highscore_displayed, 0, 0);