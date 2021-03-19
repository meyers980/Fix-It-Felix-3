/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5A79B919
/// @DnDArgument : "funcName" "calc_movement"
function calc_movement() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 234CD618
	/// @DnDParent : 5A79B919
	/// @DnDArgument : "var" "vsp"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "5"
	if(vsp <= 5)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 67EBFB53
		/// @DnDParent : 234CD618
		/// @DnDArgument : "expr" "global.grav"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "vsp"
		vsp += global.grav;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31E361A0
	/// @DnDParent : 5A79B919
	/// @DnDArgument : "expr" "hsp*drag"
	/// @DnDArgument : "var" "hsp"
	hsp = hsp*drag;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A55E3B9
	/// @DnDParent : 5A79B919
	/// @DnDArgument : "var" "abs(hsp)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "0.1"
	if(abs(hsp) < 0.1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C270FAD
		/// @DnDParent : 6A55E3B9
		/// @DnDArgument : "var" "hsp"
		hsp = 0;
	}
}