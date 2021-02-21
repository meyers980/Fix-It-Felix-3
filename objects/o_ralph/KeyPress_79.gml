/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 072FC698
/// @DnDArgument : "var" "mood"
/// @DnDArgument : "value" "ralph.MAD"
if(mood == ralph.MAD)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10B98656
	/// @DnDParent : 072FC698
	/// @DnDArgument : "expr" "ralph.SAD"
	/// @DnDArgument : "var" "mood"
	mood = ralph.SAD;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0C3C52AB
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DC36D4A
	/// @DnDParent : 0C3C52AB
	/// @DnDArgument : "expr" "ralph.MAD"
	/// @DnDArgument : "var" "mood"
	mood = ralph.MAD;
}