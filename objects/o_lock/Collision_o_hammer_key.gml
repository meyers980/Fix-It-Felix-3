/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 48AA652C
/// @DnDArgument : "value" "1"
/// @DnDArgument : "instvar" "11"
image_index = 1;

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 66AADF6F
/// @DnDApplyTo : {o_felix}
/// @DnDArgument : "score" "750"
/// @DnDArgument : "score_relative" "1"
with(o_felix) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(750);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7FE1A012
/// @DnDArgument : "soundid" "sfx_keytolock"
/// @DnDSaveInfo : "soundid" "sfx_keytolock"
audio_play_sound(sfx_keytolock, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5497A2B9
/// @DnDApplyTo : other
with(other) instance_destroy();