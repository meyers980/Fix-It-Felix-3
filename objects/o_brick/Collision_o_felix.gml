/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7668E5B0
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "24"
if(y > 24)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01C6A0F6
	/// @DnDParent : 7668E5B0
	/// @DnDArgument : "var" "other.y"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "16"
	if(other.y > 16)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2C316E6F
		/// @DnDParent : 01C6A0F6
		/// @DnDArgument : "function" "calc_damage_felix"
		calc_damage_felix();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6DE8551C
		/// @DnDParent : 01C6A0F6
		instance_destroy();
	}
}