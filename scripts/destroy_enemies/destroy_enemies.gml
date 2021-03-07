/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4892DB3B
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "destroy_enemies"
function destroy_enemies() 
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 792328F2
	/// @DnDApplyTo : {o_duck_creator}
	/// @DnDParent : 4892DB3B
	with(o_duck_creator) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2FF7C0E5
	/// @DnDApplyTo : {o_duck}
	/// @DnDParent : 4892DB3B
	with(o_duck) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1F85EA61
	/// @DnDApplyTo : {o_brickpile}
	/// @DnDParent : 4892DB3B
	with(o_brickpile) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 565C886F
	/// @DnDApplyTo : {o_ralph}
	/// @DnDParent : 4892DB3B
	with(o_ralph) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7D2D0302
	/// @DnDApplyTo : {o_brick}
	/// @DnDParent : 4892DB3B
	with(o_brick) instance_destroy();
}