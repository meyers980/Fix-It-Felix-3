/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A0F2373
/// @DnDApplyTo : other
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DEAD"
with(other) var l1A0F2373_0 = state == ps.DEAD;
if(!l1A0F2373_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C24F6FE
	/// @DnDApplyTo : other
	/// @DnDParent : 1A0F2373
	/// @DnDArgument : "expr" "ps.DEAD"
	/// @DnDArgument : "var" "state"
	with(other) {
	state = ps.DEAD;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 527F13DE
	/// @DnDApplyTo : other
	/// @DnDParent : 1A0F2373
	/// @DnDArgument : "steps" "120"
	/// @DnDArgument : "alarm" "11"
	with(other) {
	alarm_set(11, 120);
	
	}
}