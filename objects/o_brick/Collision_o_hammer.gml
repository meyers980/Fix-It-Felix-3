/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 0B2DED54
/// @DnDApplyTo : {o_felix}
/// @DnDArgument : "score" "300"
/// @DnDArgument : "score_relative" "1"
with(o_felix) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(300);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 09160C6C
/// @DnDArgument : "soundid" "sfx_hitbyhammer"
/// @DnDSaveInfo : "soundid" "sfx_hitbyhammer"
audio_play_sound(sfx_hitbyhammer, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 57432D9D
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
/// @DnDHash : 0238A566
/// @DnDApplyTo : point_display
/// @DnDArgument : "expr" "300"
/// @DnDArgument : "var" "point_value"
with(point_display) {
point_value = 300;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 22DA4387
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 67E4CA62
instance_destroy();