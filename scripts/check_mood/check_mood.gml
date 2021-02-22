/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6A038D5E
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_mood"
function check_mood() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B8C80EA
	/// @DnDParent : 6A038D5E
	/// @DnDArgument : "expr" "ralph.MAD"
	/// @DnDArgument : "var" "mood"
	mood = ralph.MAD;

	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 08BA35D5
	/// @DnDParent : 6A038D5E
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "-24"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "-32"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "obj" "o_felix"
	/// @DnDArgument : "shape" "1"
	/// @DnDSaveInfo : "obj" "o_felix"
	var l08BA35D5_0 = collision_rectangle(x + 0, y + 0, x + -24, y + -32, o_felix, true, 1);
	if((l08BA35D5_0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5362A0E9
		/// @DnDParent : 08BA35D5
		/// @DnDArgument : "expr" "ralph.SCAREDLEFT"
		/// @DnDArgument : "var" "mood"
		mood = ralph.SCAREDLEFT;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 4ECACBF9
	/// @DnDParent : 6A038D5E
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "24"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "-32"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "obj" "o_felix"
	/// @DnDArgument : "shape" "1"
	/// @DnDSaveInfo : "obj" "o_felix"
	var l4ECACBF9_0 = collision_rectangle(x + 0, y + 0, x + 24, y + -32, o_felix, true, 1);
	if((l4ECACBF9_0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 672E8EF3
		/// @DnDParent : 4ECACBF9
		/// @DnDArgument : "expr" "ralph.SCAREDRIGHT"
		/// @DnDArgument : "var" "mood"
		mood = ralph.SCAREDRIGHT;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 615F5A3D
	/// @DnDParent : 6A038D5E
	/// @DnDArgument : "x1" "-4"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "-6"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "4"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "-48"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "obj" "o_felix"
	/// @DnDArgument : "shape" "1"
	/// @DnDSaveInfo : "obj" "o_felix"
	var l615F5A3D_0 = collision_rectangle(x + -4, y + -6, x + 4, y + -48, o_felix, true, 1);
	if((l615F5A3D_0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74A6C881
		/// @DnDParent : 615F5A3D
		/// @DnDArgument : "expr" "ralph.SURPRISE"
		/// @DnDArgument : "var" "mood"
		mood = ralph.SURPRISE;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79550D1E
	/// @DnDParent : 6A038D5E
	/// @DnDArgument : "var" "alarm[11]"
	/// @DnDArgument : "op" "2"
	if(alarm[11] > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2DCC268F
		/// @DnDParent : 79550D1E
		/// @DnDArgument : "expr" "ralph.SCARED"
		/// @DnDArgument : "var" "mood"
		mood = ralph.SCARED;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53911C82
	/// @DnDParent : 6A038D5E
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "65"
	if(y < 65)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D8599F9
		/// @DnDParent : 53911C82
		/// @DnDArgument : "expr" "ralph.SAD"
		/// @DnDArgument : "var" "mood"
		mood = ralph.SAD;
	}
}