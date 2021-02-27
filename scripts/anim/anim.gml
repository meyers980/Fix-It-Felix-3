/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 333F6FE4
/// @DnDArgument : "funcName" "anim"
function anim() 
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 3D12DFFC
	/// @DnDParent : 333F6FE4
	/// @DnDArgument : "expr" "state"
	var l3D12DFFC_0 = state;
	switch(l3D12DFFC_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1BCF1A67
		/// @DnDParent : 3D12DFFC
		/// @DnDArgument : "const" "ps.IDLE"
		case ps.IDLE:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 33794D85
			/// @DnDParent : 1BCF1A67
			/// @DnDArgument : "value" "spr_idle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_idle;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 2197709E
			/// @DnDParent : 1BCF1A67
			/// @DnDArgument : "script" "check_facing"
			/// @DnDSaveInfo : "script" "check_facing"
			script_execute(check_facing);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 163CC969
		/// @DnDParent : 3D12DFFC
		/// @DnDArgument : "const" "ps.WALK"
		case ps.WALK:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 769D7DB0
			/// @DnDParent : 163CC969
			/// @DnDArgument : "value" "spr_walk"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_walk;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 2F4BDE28
			/// @DnDParent : 163CC969
			/// @DnDArgument : "script" "check_facing"
			/// @DnDSaveInfo : "script" "check_facing"
			script_execute(check_facing);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 660B7278
		/// @DnDParent : 3D12DFFC
		/// @DnDArgument : "const" "ps.AIR"
		case ps.AIR:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3F790010
			/// @DnDParent : 660B7278
			/// @DnDArgument : "value" "spr_air"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_air;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 3FBFC673
			/// @DnDParent : 660B7278
			/// @DnDArgument : "script" "check_facing"
			/// @DnDSaveInfo : "script" "check_facing"
			script_execute(check_facing);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 334852CD
			/// @DnDParent : 660B7278
			/// @DnDArgument : "var" "vsp"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "1"
			if(vsp < 1)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 73DB0639
				/// @DnDParent : 334852CD
				/// @DnDArgument : "instvar" "11"
				image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 77644324
			/// @DnDParent : 660B7278
			else
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 07876886
				/// @DnDParent : 77644324
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "instvar" "11"
				image_index = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 2E8CADE4
			/// @DnDDisabled : 1
			/// @DnDParent : 660B7278
			/// @DnDArgument : "script" "check_air_index"
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5F590B3C
		/// @DnDParent : 3D12DFFC
		/// @DnDArgument : "const" "ps.DEAD"
		case ps.DEAD:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 72DC49E1
			/// @DnDParent : 5F590B3C
			/// @DnDArgument : "value" "spr_dead"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_dead;
			break;
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 67E05D2C
/// @DnDArgument : "funcName" "anim_ralph"
function anim_ralph() 
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 28202CC4
	/// @DnDParent : 67E05D2C
	/// @DnDArgument : "expr" "mood"
	var l28202CC4_0 = mood;
	switch(l28202CC4_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7AC7F013
		/// @DnDParent : 28202CC4
		/// @DnDArgument : "const" "ralph.SAD"
		case ralph.SAD:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 05132A0B
			/// @DnDInput : 3
			/// @DnDParent : 7AC7F013
			/// @DnDArgument : "expr" "s_ralph_idle_00"
			/// @DnDArgument : "expr_1" "s_ralph_movedown_00"
			/// @DnDArgument : "expr_2" "s_ralph_moveup_00"
			/// @DnDArgument : "var" "spr_idle"
			/// @DnDArgument : "var_1" "spr_movedown"
			/// @DnDArgument : "var_2" "spr_moveup"
			spr_idle = s_ralph_idle_00;
			spr_movedown = s_ralph_movedown_00;
			spr_moveup = s_ralph_moveup_00;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3CCA35BE
		/// @DnDParent : 28202CC4
		/// @DnDArgument : "const" "ralph.MAD"
		case ralph.MAD:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4D1F06C1
			/// @DnDInput : 3
			/// @DnDParent : 3CCA35BE
			/// @DnDArgument : "expr" "s_ralph_idle_01"
			/// @DnDArgument : "expr_1" "s_ralph_movedown_01"
			/// @DnDArgument : "expr_2" "s_ralph_moveup_01"
			/// @DnDArgument : "var" "spr_idle"
			/// @DnDArgument : "var_1" "spr_movedown"
			/// @DnDArgument : "var_2" "spr_moveup"
			spr_idle = s_ralph_idle_01;
			spr_movedown = s_ralph_movedown_01;
			spr_moveup = s_ralph_moveup_01;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 26E3EC49
		/// @DnDParent : 28202CC4
		/// @DnDArgument : "const" "ralph.SURPRISE"
		case ralph.SURPRISE:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2C1A51BD
			/// @DnDInput : 3
			/// @DnDParent : 26E3EC49
			/// @DnDArgument : "expr" "s_ralph_idle_02"
			/// @DnDArgument : "expr_1" "s_ralph_movedown_02"
			/// @DnDArgument : "expr_2" "s_ralph_moveup_02"
			/// @DnDArgument : "var" "spr_idle"
			/// @DnDArgument : "var_1" "spr_movedown"
			/// @DnDArgument : "var_2" "spr_moveup"
			spr_idle = s_ralph_idle_02;
			spr_movedown = s_ralph_movedown_02;
			spr_moveup = s_ralph_moveup_02;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 58CA9802
		/// @DnDParent : 28202CC4
		/// @DnDArgument : "const" "ralph.SCARED"
		case ralph.SCARED:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 54A90CA2
			/// @DnDInput : 3
			/// @DnDParent : 58CA9802
			/// @DnDArgument : "expr" "s_ralph_idle_03"
			/// @DnDArgument : "expr_1" "s_ralph_movedown_03"
			/// @DnDArgument : "expr_2" "s_ralph_moveup_03"
			/// @DnDArgument : "var" "spr_idle"
			/// @DnDArgument : "var_1" "spr_movedown"
			/// @DnDArgument : "var_2" "spr_moveup"
			spr_idle = s_ralph_idle_03;
			spr_movedown = s_ralph_movedown_03;
			spr_moveup = s_ralph_moveup_03;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1A7B4B4A
		/// @DnDParent : 28202CC4
		/// @DnDArgument : "const" "ralph.SCAREDLEFT"
		case ralph.SCAREDLEFT:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 097C44C1
			/// @DnDInput : 3
			/// @DnDParent : 1A7B4B4A
			/// @DnDArgument : "expr" "s_ralph_idle_04"
			/// @DnDArgument : "expr_1" "s_ralph_movedown_04"
			/// @DnDArgument : "expr_2" "s_ralph_moveup_04"
			/// @DnDArgument : "var" "spr_idle"
			/// @DnDArgument : "var_1" "spr_movedown"
			/// @DnDArgument : "var_2" "spr_moveup"
			spr_idle = s_ralph_idle_04;
			spr_movedown = s_ralph_movedown_04;
			spr_moveup = s_ralph_moveup_04;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7513C2D2
		/// @DnDParent : 28202CC4
		/// @DnDArgument : "const" "ralph.SCAREDRIGHT"
		case ralph.SCAREDRIGHT:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 58918D88
			/// @DnDInput : 3
			/// @DnDParent : 7513C2D2
			/// @DnDArgument : "expr" "s_ralph_idle_05"
			/// @DnDArgument : "expr_1" "s_ralph_movedown_05"
			/// @DnDArgument : "expr_2" "s_ralph_moveup_05"
			/// @DnDArgument : "var" "spr_idle"
			/// @DnDArgument : "var_1" "spr_movedown"
			/// @DnDArgument : "var_2" "spr_moveup"
			spr_idle = s_ralph_idle_05;
			spr_movedown = s_ralph_movedown_05;
			spr_moveup = s_ralph_moveup_05;
			break;
	}

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 60A39E26
	/// @DnDParent : 67E05D2C
	/// @DnDArgument : "expr" "state"
	var l60A39E26_0 = state;
	switch(l60A39E26_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4F4320AE
		/// @DnDParent : 60A39E26
		/// @DnDArgument : "const" "r.IDLE"
		case r.IDLE:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 64381538
			/// @DnDParent : 4F4320AE
			/// @DnDArgument : "value" "spr_idle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_idle;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 276FDBF9
		/// @DnDParent : 60A39E26
		/// @DnDArgument : "const" "r.MOVEUP"
		case r.MOVEUP:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 12F1E688
			/// @DnDParent : 276FDBF9
			/// @DnDArgument : "value" "spr_movedown"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_movedown;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 07F1CF1C
		/// @DnDParent : 60A39E26
		/// @DnDArgument : "const" "r.MOVEDOWN"
		case r.MOVEDOWN:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 09AD7DB0
			/// @DnDParent : 07F1CF1C
			/// @DnDArgument : "value" "spr_movedown"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_movedown;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 407B0C4A
		/// @DnDParent : 60A39E26
		/// @DnDArgument : "const" "r.MOVELEFT"
		case r.MOVELEFT:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 0B0EB840
			/// @DnDParent : 407B0C4A
			/// @DnDArgument : "value" "spr_moveleft"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_moveleft;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 41F53F13
		/// @DnDParent : 60A39E26
		/// @DnDArgument : "const" "r.MOVERIGHT"
		case r.MOVERIGHT:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 19D6C9F4
			/// @DnDParent : 41F53F13
			/// @DnDArgument : "value" "spr_moveright"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_moveright;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5B3349F7
		/// @DnDParent : 60A39E26
		/// @DnDArgument : "const" "r.ATTACKLEFT"
		case r.ATTACKLEFT:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 17691B55
			/// @DnDParent : 5B3349F7
			/// @DnDArgument : "value" "spr_attackleft"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_attackleft;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 67C011FA
		/// @DnDParent : 60A39E26
		/// @DnDArgument : "const" "r.ATTACKRIGHT"
		case r.ATTACKRIGHT:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 304576FC
			/// @DnDParent : 67C011FA
			/// @DnDArgument : "value" "spr_attackright"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_attackright;
			break;
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2145E441
/// @DnDArgument : "funcName" "anim_duck"
function anim_duck() 
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 4AFF0884
	/// @DnDParent : 2145E441
	/// @DnDArgument : "expr" "state"
	var l4AFF0884_0 = state;
	switch(l4AFF0884_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5C07686C
		/// @DnDParent : 4AFF0884
		/// @DnDArgument : "const" "es.SIDE"
		case es.SIDE:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3F5A493D
			/// @DnDParent : 5C07686C
			/// @DnDArgument : "value" "spr_side"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_side;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7437F5B1
		/// @DnDParent : 4AFF0884
		/// @DnDArgument : "const" "es.UP"
		case es.UP:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 7A49EE1A
			/// @DnDParent : 7437F5B1
			/// @DnDArgument : "value" "spr_up"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_up;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3CE38091
		/// @DnDParent : 4AFF0884
		/// @DnDArgument : "const" "es.DIAG"
		case es.DIAG:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 60332F48
			/// @DnDParent : 3CE38091
			/// @DnDArgument : "value" "spr_diag"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_diag;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2C1A73B8
		/// @DnDParent : 4AFF0884
		/// @DnDArgument : "const" "es.STUN"
		case es.STUN:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 0166610A
			/// @DnDParent : 2C1A73B8
			/// @DnDArgument : "value" "spr_stun"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_stun;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 79EFCFCE
		/// @DnDParent : 4AFF0884
		/// @DnDArgument : "const" "es.DEAD"
		case es.DEAD:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 19836E24
			/// @DnDParent : 79EFCFCE
			/// @DnDArgument : "value" "spr_dead"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_dead;
			break;
	}
}