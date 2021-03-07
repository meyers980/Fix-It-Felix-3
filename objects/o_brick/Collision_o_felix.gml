/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7668E5B0
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "15"
if(y > 15)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2C316E6F
	/// @DnDParent : 7668E5B0
	/// @DnDArgument : "function" "calc_damage_felix"
	calc_damage_felix();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6DE8551C
	/// @DnDParent : 7668E5B0
	instance_destroy();
}