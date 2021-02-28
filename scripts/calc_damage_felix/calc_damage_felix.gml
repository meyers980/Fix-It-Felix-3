/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 35500C22
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "calc_damage_felix"
function calc_damage_felix() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 72A9F5F8
	/// @DnDApplyTo : other
	/// @DnDParent : 35500C22
	/// @DnDArgument : "var" "state"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "ps.DEAD"
	with(other) var l72A9F5F8_0 = state == ps.DEAD;
	if(!l72A9F5F8_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 46F8BD72
		/// @DnDApplyTo : other
		/// @DnDParent : 72A9F5F8
		/// @DnDArgument : "expr" "ps.DEAD"
		/// @DnDArgument : "var" "state"
		with(other) {
		state = ps.DEAD;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 6D1E8066
		/// @DnDApplyTo : other
		/// @DnDParent : 72A9F5F8
		/// @DnDArgument : "steps" "120"
		/// @DnDArgument : "alarm" "11"
		with(other) {
		alarm_set(11, 120);
		
		}
	}
}