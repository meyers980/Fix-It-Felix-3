/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D3B59B1
/// @DnDArgument : "var" "level_over"
/// @DnDArgument : "value" "true"
if(level_over == true)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3B6F90E0
	/// @DnDParent : 2D3B59B1
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "steps_relative" "1"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 1 + alarm_get(11));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 628A09DB
	/// @DnDParent : 2D3B59B1
	/// @DnDArgument : "var" "alarm[11]"
	/// @DnDArgument : "op" "2"
	if(alarm[11] > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 4E7FA136
		/// @DnDParent : 628A09DB
		/// @DnDArgument : "steps" "-100"
		/// @DnDArgument : "steps_relative" "1"
		/// @DnDArgument : "alarm" "11"
		alarm_set(11, -100 + alarm_get(11));
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 01B1710E
		/// @DnDApplyTo : {o_felix}
		/// @DnDParent : 628A09DB
		/// @DnDArgument : "score" "100"
		/// @DnDArgument : "score_relative" "1"
		with(o_felix) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(100);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 51BCCE0B
	/// @DnDParent : 2D3B59B1
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C7C354E
		/// @DnDParent : 51BCCE0B
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "level_over"
		level_over = false;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 102472C6
		/// @DnDParent : 51BCCE0B
		/// @DnDArgument : "steps" "1"
		/// @DnDArgument : "alarm" "11"
		alarm_set(11, 1);
	}
}