/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35B82DB8
/// @DnDArgument : "var" "room_get_name(room)"
/// @DnDArgument : "value" ""r_room04""
if(room_get_name(room) == "r_room04")
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31933AC3
	/// @DnDInput : 3
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 35B82DB8
	/// @DnDArgument : "expr_2" "1"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "var_1" "vsp"
	/// @DnDArgument : "var_2" "level"
	with(o_felix) {
	hsp = 0;
	vsp = 0;
	level += 1;
	
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
	/// @DnDVersion : 1
	/// @DnDHash : 13CD68A9
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 35B82DB8
	with(o_felix) {
	x = xstart;
	y = ystart;
	}

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 17068799
	/// @DnDParent : 35B82DB8
	/// @DnDArgument : "room" "r_room01"
	/// @DnDSaveInfo : "room" "r_room01"
	room_goto(r_room01);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5AF52DE1
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4EECCCC4
	/// @DnDInput : 3
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 5AF52DE1
	/// @DnDArgument : "expr_2" "1"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "var_1" "vsp"
	/// @DnDArgument : "var_2" "level"
	with(o_felix) {
	hsp = 0;
	vsp = 0;
	level += 1;
	
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
	/// @DnDVersion : 1
	/// @DnDHash : 6EABCB34
	/// @DnDApplyTo : {o_felix}
	/// @DnDParent : 5AF52DE1
	with(o_felix) {
	x = xstart;
	y = ystart;
	}

	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 763C9FFA
	/// @DnDParent : 5AF52DE1
	room_goto_next();
}