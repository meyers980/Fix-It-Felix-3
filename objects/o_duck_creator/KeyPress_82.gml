/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1AF928C9
/// @DnDArgument : "expr" "24"
/// @DnDArgument : "var" "spacing"
spacing = 24;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 39E8E1CD
/// @DnDArgument : "var" "o_felix.x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "150"
if(o_felix.x > 150)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50C90199
	/// @DnDParent : 39E8E1CD
	/// @DnDArgument : "var" "o_felix.y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "85"
	if(o_felix.y < 85)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 1DDF8A45
		/// @DnDParent : 50C90199
		/// @DnDArgument : "times" "3"
		repeat(3)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4C8FE074
			/// @DnDParent : 1DDF8A45
			/// @DnDArgument : "ypos" "256 + spacing"
			/// @DnDArgument : "var" "created_duck"
			/// @DnDArgument : "objectid" "o_duck"
			/// @DnDArgument : "layer" ""Instances_Front""
			/// @DnDSaveInfo : "objectid" "o_duck"
			created_duck = instance_create_layer(0, 256 + spacing, "Instances_Front", o_duck);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 30A3E138
			/// @DnDParent : 1DDF8A45
			/// @DnDArgument : "expr" "24"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "spacing"
			spacing += 24;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 3DC38DB5
			/// @DnDApplyTo : created_duck
			/// @DnDParent : 1DDF8A45
			with(created_duck) {
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
				/// @DnDVersion : 1.1
				/// @DnDHash : 352DEF19
				/// @DnDParent : 3DC38DB5
				/// @DnDArgument : "direction" "45"
				direction = 45;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 1B0779BC
				/// @DnDParent : 3DC38DB5
				/// @DnDArgument : "speed" "walk_spd"
				speed = walk_spd;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DB8DB31
	/// @DnDParent : 39E8E1CD
	/// @DnDArgument : "var" "o_felix.y"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "171"
	if(o_felix.y > 171)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 38DAF75A
		/// @DnDParent : 6DB8DB31
		/// @DnDArgument : "times" "3"
		repeat(3)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2048CAAB
			/// @DnDParent : 38DAF75A
			/// @DnDArgument : "ypos" "0 + spacing"
			/// @DnDArgument : "var" "created_duck"
			/// @DnDArgument : "objectid" "o_duck"
			/// @DnDArgument : "layer" ""Instances_Front""
			/// @DnDSaveInfo : "objectid" "o_duck"
			created_duck = instance_create_layer(0, 0 + spacing, "Instances_Front", o_duck);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 521C151A
			/// @DnDParent : 38DAF75A
			/// @DnDArgument : "expr" "24"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "spacing"
			spacing += 24;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 25E209D8
			/// @DnDApplyTo : created_duck
			/// @DnDParent : 38DAF75A
			with(created_duck) {
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
				/// @DnDVersion : 1.1
				/// @DnDHash : 3A2DA95F
				/// @DnDParent : 25E209D8
				/// @DnDArgument : "direction" "315"
				direction = 315;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 7C1A59AB
				/// @DnDParent : 25E209D8
				/// @DnDArgument : "speed" "walk_spd"
				speed = walk_spd;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 305932F6
	/// @DnDInput : 2
	/// @DnDParent : 39E8E1CD
	/// @DnDArgument : "expr" "o_felix.y > 85"
	/// @DnDArgument : "expr_1" "o_felix.y < 171"
	if(o_felix.y > 85 && o_felix.y < 171)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 65769202
		/// @DnDParent : 305932F6
		/// @DnDArgument : "times" "3"
		repeat(3)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0CA86BC3
			/// @DnDParent : 65769202
			/// @DnDArgument : "ypos" "85 + spacing"
			/// @DnDArgument : "var" "created_duck"
			/// @DnDArgument : "objectid" "o_duck"
			/// @DnDArgument : "layer" ""Instances_Front""
			/// @DnDSaveInfo : "objectid" "o_duck"
			created_duck = instance_create_layer(0, 85 + spacing, "Instances_Front", o_duck);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A406E4C
			/// @DnDParent : 65769202
			/// @DnDArgument : "expr" "24"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "spacing"
			spacing += 24;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 3E078A4B
			/// @DnDApplyTo : created_duck
			/// @DnDParent : 65769202
			with(created_duck) {
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
				/// @DnDVersion : 1.1
				/// @DnDHash : 0FBA79AD
				/// @DnDParent : 3E078A4B
				/// @DnDArgument : "direction" "0"
				direction = 0;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 1E522B12
				/// @DnDParent : 3E078A4B
				/// @DnDArgument : "speed" "walk_spd"
				speed = walk_spd;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C333E9F
/// @DnDArgument : "var" "o_felix.x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "75"
if(o_felix.x < 75)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C42EFE2
	/// @DnDParent : 3C333E9F
	/// @DnDArgument : "var" "o_felix.y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "85"
	if(o_felix.y < 85)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 34E1FBA3
		/// @DnDParent : 0C42EFE2
		/// @DnDArgument : "times" "3"
		repeat(3)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 099E2228
			/// @DnDParent : 34E1FBA3
			/// @DnDArgument : "xpos" "224"
			/// @DnDArgument : "ypos" "256 + spacing"
			/// @DnDArgument : "var" "created_duck"
			/// @DnDArgument : "objectid" "o_duck"
			/// @DnDArgument : "layer" ""Instances_Front""
			/// @DnDSaveInfo : "objectid" "o_duck"
			created_duck = instance_create_layer(224, 256 + spacing, "Instances_Front", o_duck);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 370F5AEF
			/// @DnDParent : 34E1FBA3
			/// @DnDArgument : "expr" "24"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "spacing"
			spacing += 24;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 38930015
			/// @DnDApplyTo : created_duck
			/// @DnDParent : 34E1FBA3
			with(created_duck) {
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
				/// @DnDVersion : 1.1
				/// @DnDHash : 6B244A84
				/// @DnDParent : 38930015
				/// @DnDArgument : "direction" "135"
				direction = 135;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 24EA50DF
				/// @DnDParent : 38930015
				/// @DnDArgument : "speed" "walk_spd"
				speed = walk_spd;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 681DD02A
	/// @DnDParent : 3C333E9F
	/// @DnDArgument : "var" "o_felix.y"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "171"
	if(o_felix.y > 171)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 38DB0A20
		/// @DnDParent : 681DD02A
		/// @DnDArgument : "times" "3"
		repeat(3)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1BBC042B
			/// @DnDParent : 38DB0A20
			/// @DnDArgument : "xpos" "224"
			/// @DnDArgument : "ypos" "0 + spacing"
			/// @DnDArgument : "var" "created_duck"
			/// @DnDArgument : "objectid" "o_duck"
			/// @DnDArgument : "layer" ""Instances_Front""
			/// @DnDSaveInfo : "objectid" "o_duck"
			created_duck = instance_create_layer(224, 0 + spacing, "Instances_Front", o_duck);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4922741E
			/// @DnDParent : 38DB0A20
			/// @DnDArgument : "expr" "24"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "spacing"
			spacing += 24;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 27D74703
			/// @DnDApplyTo : created_duck
			/// @DnDParent : 38DB0A20
			with(created_duck) {
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
				/// @DnDVersion : 1.1
				/// @DnDHash : 1266D7E6
				/// @DnDParent : 27D74703
				/// @DnDArgument : "direction" "225"
				direction = 225;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 5337E76C
				/// @DnDParent : 27D74703
				/// @DnDArgument : "speed" "walk_spd"
				speed = walk_spd;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1B0A9369
	/// @DnDInput : 2
	/// @DnDParent : 3C333E9F
	/// @DnDArgument : "expr" "o_felix.y > 85"
	/// @DnDArgument : "expr_1" "o_felix.y < 171"
	if(o_felix.y > 85 && o_felix.y < 171)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 58336551
		/// @DnDParent : 1B0A9369
		/// @DnDArgument : "times" "3"
		repeat(3)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4D1C1154
			/// @DnDParent : 58336551
			/// @DnDArgument : "xpos" "224"
			/// @DnDArgument : "ypos" "85 + spacing"
			/// @DnDArgument : "var" "created_duck"
			/// @DnDArgument : "objectid" "o_duck"
			/// @DnDArgument : "layer" ""Instances_Front""
			/// @DnDSaveInfo : "objectid" "o_duck"
			created_duck = instance_create_layer(224, 85 + spacing, "Instances_Front", o_duck);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1DEDFBA8
			/// @DnDParent : 58336551
			/// @DnDArgument : "expr" "24"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "spacing"
			spacing += 24;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 3549EAEF
			/// @DnDApplyTo : created_duck
			/// @DnDParent : 58336551
			with(created_duck) {
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
				/// @DnDVersion : 1.1
				/// @DnDHash : 21389054
				/// @DnDParent : 3549EAEF
				/// @DnDArgument : "direction" "180"
				direction = 180;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 54A42523
				/// @DnDParent : 3549EAEF
				/// @DnDArgument : "speed" "walk_spd"
				speed = walk_spd;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6FA6AD43
/// @DnDInput : 2
/// @DnDArgument : "expr" "o_felix.x > 75"
/// @DnDArgument : "expr_1" "o_felix.x < 150"
if(o_felix.x > 75 && o_felix.x < 150)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F60966F
	/// @DnDParent : 6FA6AD43
	/// @DnDArgument : "var" "o_felix.y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "128"
	if(o_felix.y < 128)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 6F1F3002
		/// @DnDParent : 1F60966F
		/// @DnDArgument : "times" "3"
		repeat(3)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3DC605E1
			/// @DnDParent : 6F1F3002
			/// @DnDArgument : "xpos" "64 + spacing"
			/// @DnDArgument : "ypos" "256"
			/// @DnDArgument : "var" "created_duck"
			/// @DnDArgument : "objectid" "o_duck"
			/// @DnDArgument : "layer" ""Instances_Front""
			/// @DnDSaveInfo : "objectid" "o_duck"
			created_duck = instance_create_layer(64 + spacing, 256, "Instances_Front", o_duck);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 029D3958
			/// @DnDParent : 6F1F3002
			/// @DnDArgument : "expr" "24"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "spacing"
			spacing += 24;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 79822CAA
			/// @DnDApplyTo : created_duck
			/// @DnDParent : 6F1F3002
			with(created_duck) {
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
				/// @DnDVersion : 1.1
				/// @DnDHash : 10EA9078
				/// @DnDParent : 79822CAA
				/// @DnDArgument : "direction" "90"
				direction = 90;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 6D1416E9
				/// @DnDParent : 79822CAA
				/// @DnDArgument : "speed" "walk_spd"
				speed = walk_spd;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 794BDFAA
	/// @DnDParent : 6FA6AD43
	/// @DnDArgument : "var" "o_felix.y"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "128"
	if(o_felix.y > 128)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 7C49998E
		/// @DnDParent : 794BDFAA
		/// @DnDArgument : "times" "3"
		repeat(3)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5CB15378
			/// @DnDParent : 7C49998E
			/// @DnDArgument : "xpos" "64 + spacing"
			/// @DnDArgument : "var" "created_duck"
			/// @DnDArgument : "objectid" "o_duck"
			/// @DnDArgument : "layer" ""Instances_Front""
			/// @DnDSaveInfo : "objectid" "o_duck"
			created_duck = instance_create_layer(64 + spacing, 0, "Instances_Front", o_duck);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 075160EE
			/// @DnDParent : 7C49998E
			/// @DnDArgument : "expr" "24"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "spacing"
			spacing += 24;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 5C7B0E5B
			/// @DnDApplyTo : created_duck
			/// @DnDParent : 7C49998E
			with(created_duck) {
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
				/// @DnDVersion : 1.1
				/// @DnDHash : 1D51C2C7
				/// @DnDParent : 5C7B0E5B
				/// @DnDArgument : "direction" "270"
				direction = 270;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 5060FCB8
				/// @DnDParent : 5C7B0E5B
				/// @DnDArgument : "speed" "walk_spd"
				speed = walk_spd;
			}
		}
	}
}