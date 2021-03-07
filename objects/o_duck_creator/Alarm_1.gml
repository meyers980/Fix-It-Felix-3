/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F75BE69
/// @DnDArgument : "var" "global.turn"
/// @DnDArgument : "value" "1"
if(global.turn == 1)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 14D02486
	/// @DnDParent : 7F75BE69
	/// @DnDArgument : "var" "create_brick"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "global.p1_level"
	/// @DnDArgument : "max" "35"
	var create_brick = floor(random_range(global.p1_level, 35 + 1));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2AC3EEBE
else
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 4088075C
	/// @DnDParent : 2AC3EEBE
	/// @DnDArgument : "var" "create_brick"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "global.p2_level"
	/// @DnDArgument : "max" "35"
	var create_brick = floor(random_range(global.p2_level, 35 + 1));
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 25135180
/// @DnDArgument : "steps" "irandom(360)"
/// @DnDArgument : "alarm" "1"
alarm_set(1, irandom(360));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 586BD773
/// @DnDArgument : "var" "create_brick"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "24"
if(create_brick > 24)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4153FFEB
	/// @DnDParent : 586BD773
	/// @DnDArgument : "xpos" "irandom(224)"
	/// @DnDArgument : "ypos" "2"
	/// @DnDArgument : "objectid" "o_brick"
	/// @DnDArgument : "layer" ""Instances_Front""
	/// @DnDSaveInfo : "objectid" "o_brick"
	instance_create_layer(irandom(224), 2, "Instances_Front", o_brick);
}