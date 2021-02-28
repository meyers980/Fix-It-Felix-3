/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 090D3F76
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "201"
if(y <= 201)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A10A90B
	/// @DnDParent : 090D3F76
	/// @DnDArgument : "var" "other.on_swing"
	/// @DnDArgument : "value" "true"
	if(other.on_swing == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1CBE67E5
		/// @DnDParent : 7A10A90B
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "other.bbox_top + 4"
		if(y <= other.bbox_top + 4)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4274137C
			/// @DnDParent : 1CBE67E5
			/// @DnDArgument : "expr" "other.bbox_top"
			/// @DnDArgument : "var" "y"
			y = other.bbox_top;
		}
	}
}