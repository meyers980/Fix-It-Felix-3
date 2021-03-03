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

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5A50E929
	/// @DnDParent : 6BD3F1F5
	/// @DnDArgument : "steps" "120"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 120);
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
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);
}