/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 64815AFA
/// @DnDArgument : "expr" "state = es.STUN || state = es.DEAD"
/// @DnDArgument : "not" "1"
if(!(state = es.STUN || state = es.DEAD))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 39F2F6E5
	/// @DnDParent : 64815AFA
	/// @DnDArgument : "function" "check_state_duck"
	check_state_duck();
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 67585929
/// @DnDArgument : "function" "anim_duck"
anim_duck();

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 04DDC24C
/// @DnDArgument : "expr" "state"
var l04DDC24C_0 = state;
switch(l04DDC24C_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2EEF35C4
	/// @DnDParent : 04DDC24C
	/// @DnDArgument : "const" "es.STUN"
	case es.STUN:
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 46F591F6
		/// @DnDParent : 2EEF35C4
		speed = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 48CA3BCB
		/// @DnDInput : 2
		/// @DnDParent : 2EEF35C4
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "facing"
		/// @DnDArgument : "var_1" "duck_rotate"
		facing = 1;
		duck_rotate = 0;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1A829947
	/// @DnDParent : 04DDC24C
	/// @DnDArgument : "const" "es.DEAD"
	case es.DEAD:
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 40D082C1
		/// @DnDParent : 1A829947
		/// @DnDArgument : "speed" "walk_spd"
		speed = walk_spd;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 67942A0B
		/// @DnDInput : 2
		/// @DnDParent : 1A829947
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "facing"
		/// @DnDArgument : "var_1" "duck_rotate"
		facing = 1;
		duck_rotate = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 0ED7C4DA
		/// @DnDParent : 1A829947
		/// @DnDArgument : "direction" "270"
		direction = 270;
		break;
}