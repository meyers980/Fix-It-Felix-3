/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5F321A78
/// @DnDInput : 2
/// @DnDArgument : "expr" "state = es.STUN"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "expr_1" "state = es.DEAD"
/// @DnDArgument : "not_1" "1"
if(!(state = es.STUN) && !(state = es.DEAD))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0BB01207
	/// @DnDParent : 5F321A78
	/// @DnDArgument : "function" "calc_damage_felix"
	calc_damage_felix();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 588F1B67
	/// @DnDParent : 5F321A78
	instance_destroy();
}