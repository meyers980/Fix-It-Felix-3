/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E174BDB
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "30"
if(y > 30)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A75410D
	/// @DnDParent : 6E174BDB
	/// @DnDArgument : "var" "other.y"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "16"
	if(other.y > 16)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 7348CF58
		/// @DnDParent : 6A75410D
		/// @DnDArgument : "function" "calc_damage_felix"
		calc_damage_felix();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 13C5579D
		/// @DnDParent : 6A75410D
		instance_destroy();
	}
}