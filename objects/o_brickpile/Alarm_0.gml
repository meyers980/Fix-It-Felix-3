/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 22BA01C0
/// @DnDApplyTo : {o_ralph}
/// @DnDArgument : "value" "s_ralphattacks_left"
/// @DnDArgument : "instvar" "10"
with(o_ralph) {
sprite_index = s_ralphattacks_left;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 04E8A14D
/// @DnDArgument : "speed" "3"
speed = 3;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 3DCBF404
/// @DnDArgument : "x" "o_felix.x"
/// @DnDArgument : "y" "o_felix.y"
direction = point_direction(x, y, o_felix.x, o_felix.y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 662D8FCB
/// @DnDDisabled : 1
/// @DnDArgument : "angle" "point_direction(x, y, o_felix.x, o_felix.y);"