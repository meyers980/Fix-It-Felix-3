/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5A7B16EA
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "coins"
global.coins += 1;

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 2022B7F9
/// @DnDArgument : "soundid" "sfx_coin"
/// @DnDSaveInfo : "soundid" "sfx_coin"
audio_stop_sound(sfx_coin);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 4C274B8F
/// @DnDArgument : "soundid" "sfx_coin1"
audio_play_sound(sfx_coin1, 0, 0);