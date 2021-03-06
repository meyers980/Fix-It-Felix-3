/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35B82DB8
/// @DnDArgument : "var" "room_get_name(room)"
/// @DnDArgument : "value" ""r_room02""
if(room_get_name(room) == "r_room02")
{
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