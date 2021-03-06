/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 052CFC0B
/// @DnDArgument : "obj" "o_ralph"
/// @DnDSaveInfo : "obj" "o_ralph"
var l052CFC0B_0 = false;
l052CFC0B_0 = instance_exists(o_ralph);
if(l052CFC0B_0)
{

}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 15716376
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 61D9C1C9
	/// @DnDParent : 15716376
	/// @DnDArgument : "steps" "120"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 120);
}