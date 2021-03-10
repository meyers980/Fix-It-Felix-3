/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 20871D9A
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "coins"
global.coins += 1;

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 74572A8D
/// @DnDArgument : "soundid" "sfx_coin"
/// @DnDSaveInfo : "soundid" "sfx_coin"
audio_stop_sound(sfx_coin);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 31A68350
/// @DnDArgument : "soundid" "sfx_coin"
/// @DnDSaveInfo : "soundid" "sfx_coin"
audio_play_sound(sfx_coin, 0, 0);