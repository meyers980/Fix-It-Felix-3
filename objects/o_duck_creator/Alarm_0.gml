/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C3C06FF
/// @DnDArgument : "var" "global.turn"
/// @DnDArgument : "value" "1"
if(global.turn == 1)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 4ED14C03
	/// @DnDParent : 4C3C06FF
	/// @DnDArgument : "var" "create_duck"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "global.p1_level"
	/// @DnDArgument : "max" "35"
	var create_duck = floor(random_range(global.p1_level, 35 + 1));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 351E13C6
else
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 48DFB46B
	/// @DnDParent : 351E13C6
	/// @DnDArgument : "var" "create_duck"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "global.p2_level"
	/// @DnDArgument : "max" "35"
	var create_duck = floor(random_range(global.p2_level, 35 + 1));
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 293EFBA3
/// @DnDArgument : "steps" "irandom_range(60, 420)"
alarm_set(0, irandom_range(60, 420));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0781FC4E
/// @DnDArgument : "var" "create_duck"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "27"
if(create_duck > 27)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 336F95DF
	/// @DnDParent : 0781FC4E
	/// @DnDArgument : "expr" "24"
	/// @DnDArgument : "var" "spacing"
	spacing = 24;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A63DA96
	/// @DnDParent : 0781FC4E
	/// @DnDArgument : "var" "o_felix.x"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "150"
	if(o_felix.x > 150)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6AB36CC6
		/// @DnDParent : 0A63DA96
		/// @DnDArgument : "var" "o_felix.y"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "85"
		if(o_felix.y < 85)
		{
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 048527E6
			/// @DnDParent : 6AB36CC6
			/// @DnDArgument : "times" "3"
			repeat(3)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 0DB29475
				/// @DnDParent : 048527E6
				/// @DnDArgument : "ypos" "256 + spacing"
				/// @DnDArgument : "var" "created_duck"
				/// @DnDArgument : "objectid" "o_duck"
				/// @DnDArgument : "layer" ""Instances_Front""
				/// @DnDSaveInfo : "objectid" "o_duck"
				created_duck = instance_create_layer(0, 256 + spacing, "Instances_Front", o_duck);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 640A0475
				/// @DnDParent : 048527E6
				/// @DnDArgument : "expr" "24"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "spacing"
				spacing += 24;
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 7F6E6D10
				/// @DnDApplyTo : created_duck
				/// @DnDParent : 048527E6
				with(created_duck) {
					/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
					/// @DnDVersion : 1.1
					/// @DnDHash : 627075B9
					/// @DnDParent : 7F6E6D10
					/// @DnDArgument : "direction" "45"
					direction = 45;
				
					/// @DnDAction : YoYo Games.Movement.Set_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 3C8CA92B
					/// @DnDParent : 7F6E6D10
					/// @DnDArgument : "speed" "walk_spd"
					speed = walk_spd;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 595265EF
		/// @DnDParent : 0A63DA96
		/// @DnDArgument : "var" "o_felix.y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "171"
		if(o_felix.y > 171)
		{
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 1B75C842
			/// @DnDParent : 595265EF
			/// @DnDArgument : "times" "3"
			repeat(3)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 24F89A9E
				/// @DnDParent : 1B75C842
				/// @DnDArgument : "ypos" "0 + spacing"
				/// @DnDArgument : "var" "created_duck"
				/// @DnDArgument : "objectid" "o_duck"
				/// @DnDArgument : "layer" ""Instances_Front""
				/// @DnDSaveInfo : "objectid" "o_duck"
				created_duck = instance_create_layer(0, 0 + spacing, "Instances_Front", o_duck);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 66F0A54C
				/// @DnDParent : 1B75C842
				/// @DnDArgument : "expr" "24"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "spacing"
				spacing += 24;
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 1B90B9CC
				/// @DnDApplyTo : created_duck
				/// @DnDParent : 1B75C842
				with(created_duck) {
					/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
					/// @DnDVersion : 1.1
					/// @DnDHash : 009A831D
					/// @DnDParent : 1B90B9CC
					/// @DnDArgument : "direction" "315"
					direction = 315;
				
					/// @DnDAction : YoYo Games.Movement.Set_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 25F201F4
					/// @DnDParent : 1B90B9CC
					/// @DnDArgument : "speed" "walk_spd"
					speed = walk_spd;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 15027307
		/// @DnDInput : 2
		/// @DnDParent : 0A63DA96
		/// @DnDArgument : "expr" "o_felix.y > 85"
		/// @DnDArgument : "expr_1" "o_felix.y < 171"
		if(o_felix.y > 85 && o_felix.y < 171)
		{
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 05A664BD
			/// @DnDParent : 15027307
			/// @DnDArgument : "times" "3"
			repeat(3)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5DD5069B
				/// @DnDParent : 05A664BD
				/// @DnDArgument : "ypos" "85 + spacing"
				/// @DnDArgument : "var" "created_duck"
				/// @DnDArgument : "objectid" "o_duck"
				/// @DnDArgument : "layer" ""Instances_Front""
				/// @DnDSaveInfo : "objectid" "o_duck"
				created_duck = instance_create_layer(0, 85 + spacing, "Instances_Front", o_duck);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 02294A3C
				/// @DnDParent : 05A664BD
				/// @DnDArgument : "expr" "24"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "spacing"
				spacing += 24;
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 3CA2F33D
				/// @DnDApplyTo : created_duck
				/// @DnDParent : 05A664BD
				with(created_duck) {
					/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
					/// @DnDVersion : 1.1
					/// @DnDHash : 6C0FF375
					/// @DnDParent : 3CA2F33D
					/// @DnDArgument : "direction" "0"
					direction = 0;
				
					/// @DnDAction : YoYo Games.Movement.Set_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 1DAF9436
					/// @DnDParent : 3CA2F33D
					/// @DnDArgument : "speed" "walk_spd"
					speed = walk_spd;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AB7E4A7
	/// @DnDParent : 0781FC4E
	/// @DnDArgument : "var" "o_felix.x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "75"
	if(o_felix.x < 75)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 09C96F17
		/// @DnDParent : 6AB7E4A7
		/// @DnDArgument : "var" "o_felix.y"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "85"
		if(o_felix.y < 85)
		{
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 7C7F29C5
			/// @DnDParent : 09C96F17
			/// @DnDArgument : "times" "3"
			repeat(3)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 579BA79F
				/// @DnDParent : 7C7F29C5
				/// @DnDArgument : "xpos" "224"
				/// @DnDArgument : "ypos" "256 + spacing"
				/// @DnDArgument : "var" "created_duck"
				/// @DnDArgument : "objectid" "o_duck"
				/// @DnDArgument : "layer" ""Instances_Front""
				/// @DnDSaveInfo : "objectid" "o_duck"
				created_duck = instance_create_layer(224, 256 + spacing, "Instances_Front", o_duck);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 562F716D
				/// @DnDParent : 7C7F29C5
				/// @DnDArgument : "expr" "24"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "spacing"
				spacing += 24;
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 57EB038A
				/// @DnDApplyTo : created_duck
				/// @DnDParent : 7C7F29C5
				with(created_duck) {
					/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
					/// @DnDVersion : 1.1
					/// @DnDHash : 0FBE896C
					/// @DnDParent : 57EB038A
					/// @DnDArgument : "direction" "135"
					direction = 135;
				
					/// @DnDAction : YoYo Games.Movement.Set_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 168C2ABE
					/// @DnDParent : 57EB038A
					/// @DnDArgument : "speed" "walk_spd"
					speed = walk_spd;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F39C142
		/// @DnDParent : 6AB7E4A7
		/// @DnDArgument : "var" "o_felix.y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "171"
		if(o_felix.y > 171)
		{
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 09ACFCF5
			/// @DnDParent : 4F39C142
			/// @DnDArgument : "times" "3"
			repeat(3)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 31D29186
				/// @DnDParent : 09ACFCF5
				/// @DnDArgument : "xpos" "224"
				/// @DnDArgument : "ypos" "0 + spacing"
				/// @DnDArgument : "var" "created_duck"
				/// @DnDArgument : "objectid" "o_duck"
				/// @DnDArgument : "layer" ""Instances_Front""
				/// @DnDSaveInfo : "objectid" "o_duck"
				created_duck = instance_create_layer(224, 0 + spacing, "Instances_Front", o_duck);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 52B10560
				/// @DnDParent : 09ACFCF5
				/// @DnDArgument : "expr" "24"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "spacing"
				spacing += 24;
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 2E44B2AC
				/// @DnDApplyTo : created_duck
				/// @DnDParent : 09ACFCF5
				with(created_duck) {
					/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
					/// @DnDVersion : 1.1
					/// @DnDHash : 218DC1FB
					/// @DnDParent : 2E44B2AC
					/// @DnDArgument : "direction" "225"
					direction = 225;
				
					/// @DnDAction : YoYo Games.Movement.Set_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 0416B9C6
					/// @DnDParent : 2E44B2AC
					/// @DnDArgument : "speed" "walk_spd"
					speed = walk_spd;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5B49BF52
		/// @DnDInput : 2
		/// @DnDParent : 6AB7E4A7
		/// @DnDArgument : "expr" "o_felix.y > 85"
		/// @DnDArgument : "expr_1" "o_felix.y < 171"
		if(o_felix.y > 85 && o_felix.y < 171)
		{
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 0185B70D
			/// @DnDParent : 5B49BF52
			/// @DnDArgument : "times" "3"
			repeat(3)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 244AE9B2
				/// @DnDParent : 0185B70D
				/// @DnDArgument : "xpos" "224"
				/// @DnDArgument : "ypos" "85 + spacing"
				/// @DnDArgument : "var" "created_duck"
				/// @DnDArgument : "objectid" "o_duck"
				/// @DnDArgument : "layer" ""Instances_Front""
				/// @DnDSaveInfo : "objectid" "o_duck"
				created_duck = instance_create_layer(224, 85 + spacing, "Instances_Front", o_duck);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4536C2BE
				/// @DnDParent : 0185B70D
				/// @DnDArgument : "expr" "24"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "spacing"
				spacing += 24;
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 49AAD357
				/// @DnDApplyTo : created_duck
				/// @DnDParent : 0185B70D
				with(created_duck) {
					/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
					/// @DnDVersion : 1.1
					/// @DnDHash : 7784D8C4
					/// @DnDParent : 49AAD357
					/// @DnDArgument : "direction" "180"
					direction = 180;
				
					/// @DnDAction : YoYo Games.Movement.Set_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 741A119B
					/// @DnDParent : 49AAD357
					/// @DnDArgument : "speed" "walk_spd"
					speed = walk_spd;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1309B97D
	/// @DnDInput : 2
	/// @DnDParent : 0781FC4E
	/// @DnDArgument : "expr" "o_felix.x > 75"
	/// @DnDArgument : "expr_1" "o_felix.x < 150"
	if(o_felix.x > 75 && o_felix.x < 150)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D7D743A
		/// @DnDParent : 1309B97D
		/// @DnDArgument : "var" "o_felix.y"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "128"
		if(o_felix.y < 128)
		{
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 2A5F6542
			/// @DnDParent : 0D7D743A
			/// @DnDArgument : "times" "3"
			repeat(3)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 36FF8612
				/// @DnDParent : 2A5F6542
				/// @DnDArgument : "xpos" "64 + spacing"
				/// @DnDArgument : "ypos" "256"
				/// @DnDArgument : "var" "created_duck"
				/// @DnDArgument : "objectid" "o_duck"
				/// @DnDArgument : "layer" ""Instances_Front""
				/// @DnDSaveInfo : "objectid" "o_duck"
				created_duck = instance_create_layer(64 + spacing, 256, "Instances_Front", o_duck);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7E26D59F
				/// @DnDParent : 2A5F6542
				/// @DnDArgument : "expr" "24"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "spacing"
				spacing += 24;
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 05D49EB5
				/// @DnDApplyTo : created_duck
				/// @DnDParent : 2A5F6542
				with(created_duck) {
					/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
					/// @DnDVersion : 1.1
					/// @DnDHash : 27BB17BC
					/// @DnDParent : 05D49EB5
					/// @DnDArgument : "direction" "90"
					direction = 90;
				
					/// @DnDAction : YoYo Games.Movement.Set_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 70FC4567
					/// @DnDParent : 05D49EB5
					/// @DnDArgument : "speed" "walk_spd"
					speed = walk_spd;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0E084EFA
		/// @DnDParent : 1309B97D
		/// @DnDArgument : "var" "o_felix.y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "128"
		if(o_felix.y > 128)
		{
			/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 4ADF0910
			/// @DnDParent : 0E084EFA
			/// @DnDArgument : "times" "3"
			repeat(3)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 475FA269
				/// @DnDParent : 4ADF0910
				/// @DnDArgument : "xpos" "64 + spacing"
				/// @DnDArgument : "var" "created_duck"
				/// @DnDArgument : "objectid" "o_duck"
				/// @DnDArgument : "layer" ""Instances_Front""
				/// @DnDSaveInfo : "objectid" "o_duck"
				created_duck = instance_create_layer(64 + spacing, 0, "Instances_Front", o_duck);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6CB4465F
				/// @DnDParent : 4ADF0910
				/// @DnDArgument : "expr" "24"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "spacing"
				spacing += 24;
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 7FFB881E
				/// @DnDApplyTo : created_duck
				/// @DnDParent : 4ADF0910
				with(created_duck) {
					/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
					/// @DnDVersion : 1.1
					/// @DnDHash : 7ABBB8CE
					/// @DnDParent : 7FFB881E
					/// @DnDArgument : "direction" "270"
					direction = 270;
				
					/// @DnDAction : YoYo Games.Movement.Set_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 11336AAF
					/// @DnDParent : 7FFB881E
					/// @DnDArgument : "speed" "walk_spd"
					speed = walk_spd;
				}
			}
		}
	}
}