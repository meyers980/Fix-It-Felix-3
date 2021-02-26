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