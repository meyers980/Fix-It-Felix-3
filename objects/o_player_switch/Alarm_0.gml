/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 53A0629E
/// @DnDArgument : "var" "room_get_name(room)"
/// @DnDArgument : "value" ""r_p1start""
if(room_get_name(room) == "r_p1start")
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 535361E2
	/// @DnDParent : 53A0629E
	/// @DnDArgument : "code" "instance_activate_all();"
	instance_activate_all();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53F67F03
	/// @DnDInput : 4
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 53A0629E
	/// @DnDArgument : "expr" "global.p1_lives"
	/// @DnDArgument : "expr_1" "global.p1_score"
	/// @DnDArgument : "expr_2" "global.p1_level"
	/// @DnDArgument : "expr_3" "ps.IDLE"
	/// @DnDArgument : "var" "__dnd_lives"
	/// @DnDArgument : "var_1" "__dnd_score"
	/// @DnDArgument : "var_2" "level"
	/// @DnDArgument : "var_3" "state"
	with(o_felix) {
	__dnd_lives = global.p1_lives;
	__dnd_score = global.p1_score;
	level = global.p1_level;
	state = ps.IDLE;
	
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
	/// @DnDVersion : 1
	/// @DnDHash : 6EAA081D
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 53A0629E
	with(o_felix) {
	x = xstart;
	y = ystart;
	}

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3F5C8804
	/// @DnDParent : 53A0629E
	/// @DnDArgument : "room" "global.p1_room"
	room_goto(global.p1_room);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 15F61E81
/// @DnDArgument : "var" "room_get_name(room)"
/// @DnDArgument : "value" ""r_p2start""
if(room_get_name(room) == "r_p2start")
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56AE3F96
	/// @DnDInput : 4
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 15F61E81
	/// @DnDArgument : "expr" "global.p2_lives"
	/// @DnDArgument : "expr_1" "global.p2_score"
	/// @DnDArgument : "expr_2" "global.p2_level"
	/// @DnDArgument : "expr_3" "ps.IDLE"
	/// @DnDArgument : "var" "__dnd_lives"
	/// @DnDArgument : "var_1" "__dnd_score"
	/// @DnDArgument : "var_2" "level"
	/// @DnDArgument : "var_3" "state"
	with(o_felix) {
	__dnd_lives = global.p2_lives;
	__dnd_score = global.p2_score;
	level = global.p2_level;
	state = ps.IDLE;
	
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
	/// @DnDVersion : 1
	/// @DnDHash : 777EF3B4
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 15F61E81
	with(o_felix) {
	x = xstart;
	y = ystart;
	}

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5486E699
	/// @DnDParent : 15F61E81
	/// @DnDArgument : "room" "global.p2_room"
	room_goto(global.p2_room);
}