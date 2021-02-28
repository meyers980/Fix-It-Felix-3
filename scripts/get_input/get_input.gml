/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1390961C
/// @DnDArgument : "funcName" "get_input"
function get_input() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 132BB72E
	/// @DnDParent : 1390961C
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "jump"
	jump = false;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 7BC8488E
	/// @DnDParent : 1390961C
	/// @DnDArgument : "key" "vk_right"
	var l7BC8488E_0;
	l7BC8488E_0 = keyboard_check(vk_right);
	if (l7BC8488E_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 010559BA
		/// @DnDParent : 7BC8488E
		/// @DnDArgument : "expr" "walk_spd"
		/// @DnDArgument : "var" "hsp"
		hsp = walk_spd;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 02A424C7
	/// @DnDParent : 1390961C
	/// @DnDArgument : "key" "vk_left"
	var l02A424C7_0;
	l02A424C7_0 = keyboard_check(vk_left);
	if (l02A424C7_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C94B3D8
		/// @DnDParent : 02A424C7
		/// @DnDArgument : "expr" "-walk_spd"
		/// @DnDArgument : "var" "hsp"
		hsp = -walk_spd;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 0B5242C3
	/// @DnDParent : 1390961C
	/// @DnDArgument : "key" "vk_control"
	var l0B5242C3_0;
	l0B5242C3_0 = keyboard_check_pressed(vk_control);
	if (l0B5242C3_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1946047F
		/// @DnDParent : 0B5242C3
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "jump"
		jump = true;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
	/// @DnDVersion : 1
	/// @DnDHash : 64ED4BC6
	/// @DnDParent : 1390961C
	/// @DnDArgument : "key" "vk_control"
	var l64ED4BC6_0;
	l64ED4BC6_0 = keyboard_check_released(vk_control);
	if (l64ED4BC6_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E0D8F4C
		/// @DnDParent : 64ED4BC6
		/// @DnDArgument : "var" "vsp"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "-2"
		if(vsp < -2)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 030F2593
			/// @DnDParent : 4E0D8F4C
			/// @DnDArgument : "expr" "-2"
			/// @DnDArgument : "var" "vsp"
			vsp = -2;
		}
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 3E060854
	/// @DnDParent : 1390961C
	/// @DnDArgument : "key" "vk_alt"
	var l3E060854_0;
	l3E060854_0 = keyboard_check_pressed(vk_alt);
	if (l3E060854_0)
	{
		/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
		/// @DnDVersion : 1
		/// @DnDHash : 7DF4312F
		/// @DnDParent : 3E060854
		/// @DnDArgument : "var" "hammer_count"
		/// @DnDArgument : "object" "o_hammer"
		/// @DnDSaveInfo : "object" "o_hammer"
		hammer_count = instance_number(o_hammer);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3ED8E5CC
		/// @DnDParent : 3E060854
		/// @DnDArgument : "var" "hammer_count"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "3"
		if(hammer_count < 3)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6A8567FD
			/// @DnDParent : 3ED8E5CC
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "attack"
			attack = true;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 4FE19ECB
			/// @DnDParent : 3ED8E5CC
			/// @DnDArgument : "steps" "15"
			/// @DnDArgument : "alarm" "10"
			alarm_set(10, 15);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 50E8453E
			/// @DnDParent : 3ED8E5CC
			/// @DnDArgument : "xpos" "6 * facing"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "-18"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "created_hammer"
			/// @DnDArgument : "objectid" "o_hammer"
			/// @DnDSaveInfo : "objectid" "o_hammer"
			created_hammer = instance_create_layer(x + 6 * facing, y + -18, "Instances", o_hammer);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6EA59C38
			/// @DnDInput : 3
			/// @DnDApplyTo : created_hammer
			/// @DnDParent : 3ED8E5CC
			/// @DnDArgument : "expr" "other.facing"
			/// @DnDArgument : "expr_1" "-2 + (.5 * other.vsp)"
			/// @DnDArgument : "expr_2" "1.1 * facing"
			/// @DnDArgument : "var" "facing"
			/// @DnDArgument : "var_1" "vsp"
			/// @DnDArgument : "var_2" "hsp"
			with(created_hammer) {
			facing = other.facing;
			vsp = -2 + (.5 * other.vsp);
			hsp = 1.1 * facing;
			
			}
		}
	}
}