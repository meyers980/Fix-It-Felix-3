/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 37DF355A
/// @DnDArgument : "expr" "state"
var l37DF355A_0 = state;
switch(l37DF355A_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 140FEF69
	/// @DnDParent : 37DF355A
	/// @DnDArgument : "const" "ps.IDLE"
	case ps.IDLE:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 36427897
		/// @DnDParent : 140FEF69
		/// @DnDArgument : "function" "get_input"
		get_input();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3438141A
		/// @DnDParent : 140FEF69
		/// @DnDArgument : "function" "calc_movement"
		calc_movement();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 7E5FEFAC
		/// @DnDParent : 140FEF69
		/// @DnDArgument : "function" "check_ground"
		check_ground();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6512106B
		/// @DnDParent : 140FEF69
		/// @DnDArgument : "function" "check_state"
		check_state();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3B79BEC7
		/// @DnDParent : 140FEF69
		/// @DnDArgument : "function" "check_jump"
		check_jump();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 52DA9A5F
		/// @DnDParent : 140FEF69
		/// @DnDArgument : "function" "check_collision"
		check_collision();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 0E7D0B7B
		/// @DnDParent : 140FEF69
		/// @DnDArgument : "function" "anim"
		anim();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 178FE53E
	/// @DnDParent : 37DF355A
	/// @DnDArgument : "const" "ps.WALK"
	case ps.WALK:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 0534AFEB
		/// @DnDParent : 178FE53E
		/// @DnDArgument : "function" "get_input"
		get_input();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3F697AC8
		/// @DnDParent : 178FE53E
		/// @DnDArgument : "function" "calc_movement"
		calc_movement();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6E6BC232
		/// @DnDParent : 178FE53E
		/// @DnDArgument : "function" "check_ground"
		check_ground();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 135DB42E
		/// @DnDParent : 178FE53E
		/// @DnDArgument : "function" "check_state"
		check_state();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 1F2E72A7
		/// @DnDParent : 178FE53E
		/// @DnDArgument : "function" "check_jump"
		check_jump();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2967913B
		/// @DnDParent : 178FE53E
		/// @DnDArgument : "function" "check_collision"
		check_collision();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5D443D4E
		/// @DnDParent : 178FE53E
		/// @DnDArgument : "function" "anim"
		anim();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4B696DF7
	/// @DnDParent : 37DF355A
	/// @DnDArgument : "const" "ps.STUN"
	case ps.STUN:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 63E4B90C
		/// @DnDParent : 4B696DF7
		/// @DnDArgument : "function" "get_input"
		get_input();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6C0B29EF
		/// @DnDParent : 4B696DF7
		/// @DnDArgument : "function" "calc_movement"
		calc_movement();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 768E08A9
		/// @DnDParent : 4B696DF7
		/// @DnDArgument : "function" "check_ground"
		check_ground();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2166B11A
		/// @DnDParent : 4B696DF7
		/// @DnDArgument : "function" "check_state"
		check_state();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 79EFA0C5
		/// @DnDParent : 4B696DF7
		/// @DnDArgument : "function" "check_jump"
		check_jump();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2F802242
		/// @DnDParent : 4B696DF7
		/// @DnDArgument : "function" "check_collision"
		check_collision();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 52C1C4D9
		/// @DnDParent : 4B696DF7
		/// @DnDArgument : "function" "anim"
		anim();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7CAF48A0
	/// @DnDParent : 37DF355A
	/// @DnDArgument : "const" "ps.INVUL"
	case ps.INVUL:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2F8AD01C
		/// @DnDParent : 7CAF48A0
		/// @DnDArgument : "function" "get_input"
		get_input();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 563A606A
		/// @DnDParent : 7CAF48A0
		/// @DnDArgument : "function" "calc_movement"
		calc_movement();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 22549DC2
		/// @DnDParent : 7CAF48A0
		/// @DnDArgument : "function" "check_ground"
		check_ground();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 07571094
		/// @DnDParent : 7CAF48A0
		/// @DnDArgument : "function" "check_state"
		check_state();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2D578723
		/// @DnDParent : 7CAF48A0
		/// @DnDArgument : "function" "check_jump"
		check_jump();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 70D54023
		/// @DnDParent : 7CAF48A0
		/// @DnDArgument : "function" "check_collision"
		check_collision();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 261F0B1C
		/// @DnDParent : 7CAF48A0
		/// @DnDArgument : "function" "anim"
		anim();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 10EAA8B3
	/// @DnDParent : 37DF355A
	/// @DnDArgument : "const" "ps.ATTACK"
	case ps.ATTACK:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 7C49013B
		/// @DnDParent : 10EAA8B3
		/// @DnDArgument : "function" "get_input"
		get_input();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 68F6712D
		/// @DnDParent : 10EAA8B3
		/// @DnDArgument : "function" "calc_movement"
		calc_movement();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 187B0384
		/// @DnDParent : 10EAA8B3
		/// @DnDArgument : "function" "check_ground"
		check_ground();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 14C04FAB
		/// @DnDParent : 10EAA8B3
		/// @DnDArgument : "function" "check_state"
		check_state();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 192DA53D
		/// @DnDParent : 10EAA8B3
		/// @DnDArgument : "function" "check_jump"
		check_jump();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 4D554D2F
		/// @DnDParent : 10EAA8B3
		/// @DnDArgument : "function" "check_collision"
		check_collision();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6D8F8ED7
		/// @DnDParent : 10EAA8B3
		/// @DnDArgument : "function" "anim"
		anim();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 52132B66
	/// @DnDParent : 37DF355A
	/// @DnDArgument : "const" "ps.AIR"
	case ps.AIR:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3442118A
		/// @DnDParent : 52132B66
		/// @DnDArgument : "function" "get_input"
		get_input();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 45397568
		/// @DnDParent : 52132B66
		/// @DnDArgument : "function" "calc_movement"
		calc_movement();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 1D86FB71
		/// @DnDParent : 52132B66
		/// @DnDArgument : "function" "check_ground"
		check_ground();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 0A3F9C68
		/// @DnDParent : 52132B66
		/// @DnDArgument : "function" "check_state"
		check_state();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 0419C1A0
		/// @DnDParent : 52132B66
		/// @DnDArgument : "function" "check_jump"
		check_jump();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 343044D8
		/// @DnDParent : 52132B66
		/// @DnDArgument : "function" "check_collision"
		check_collision();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 1DE3078D
		/// @DnDParent : 52132B66
		/// @DnDArgument : "function" "anim"
		anim();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4A9804B0
	/// @DnDParent : 37DF355A
	/// @DnDArgument : "const" "ps.DEAD"
	case ps.DEAD:
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5B22D21F
		/// @DnDParent : 4A9804B0
		/// @DnDArgument : "function" "get_input"
		get_input();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 30DD35B9
		/// @DnDParent : 4A9804B0
		/// @DnDArgument : "function" "calc_movement"
		calc_movement();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 193493C9
		/// @DnDParent : 4A9804B0
		/// @DnDArgument : "function" "check_ground"
		check_ground();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5500EC5B
		/// @DnDParent : 4A9804B0
		/// @DnDArgument : "function" "check_state"
		check_state();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3F5E2490
		/// @DnDParent : 4A9804B0
		/// @DnDArgument : "function" "check_jump"
		check_jump();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 682C9319
		/// @DnDParent : 4A9804B0
		/// @DnDArgument : "function" "check_collision"
		check_collision();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6F725CE3
		/// @DnDParent : 4A9804B0
		/// @DnDArgument : "function" "anim"
		anim();
		break;
}