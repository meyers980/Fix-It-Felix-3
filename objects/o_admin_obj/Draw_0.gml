/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7E19364E
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "room == r_coin || room == r_2playersideA || room == r_2playersideB"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 55B29453
/// @DnDDisabled : 1
/// @DnDParent : 7E19364E
/// @DnDArgument : "var" "global.freeplay"
/// @DnDArgument : "value" ""false""
/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 051D063D
/// @DnDDisabled : 1
/// @DnDParent : 55B29453
/// @DnDArgument : "x" "352"
/// @DnDArgument : "y" "448"
/// @DnDArgument : "caption" ""CREDIT ""
/// @DnDArgument : "var" "string_format(global.coins, 2, 0)"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 056D4A99
/// @DnDDisabled : 1
/// @DnDParent : 7E19364E
/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1156E138
/// @DnDDisabled : 1
/// @DnDParent : 056D4A99
/// @DnDArgument : "x" "352"
/// @DnDArgument : "y" "448"
/// @DnDArgument : "caption" ""FREEPLAY""