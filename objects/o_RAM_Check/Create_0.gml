/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 632E98EF
randomize();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 76A718EE
/// @DnDArgument : "font" "arcade_font"
/// @DnDSaveInfo : "font" "arcade_font"
draw_set_font(arcade_font);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 025D3382
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6C7944C7
draw_set_colour($FFFFFFFF & $ffffff);
var l6C7944C7_0=($FFFFFFFF >> 24);
draw_set_alpha(l6C7944C7_0 / $ff);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4B95D80D
/// @DnDArgument : "steps" "240"
alarm_set(0, 240);

/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 29F3A0A3
/// @DnDArgument : "filename" ""settings.ini""
ini_open("settings.ini");

/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 6C96E8DC
/// @DnDArgument : "var" "savescores"
/// @DnDArgument : "section" ""Settings""
/// @DnDArgument : "key" ""Savescores""
/// @DnDArgument : "default" ""false""
savescores = ini_read_string("Settings", "Savescores", "false");

/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 05DF8DF7
ini_close();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E2ABCEE
/// @DnDArgument : "var" "savescores"
/// @DnDArgument : "value" ""false""
if(savescores == "false")
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 03AC071E
	/// @DnDParent : 1E2ABCEE
	/// @DnDArgument : "code" "highscore_clear();$(13_10)highscore_add("SAM", 68000);$(13_10)highscore_add("JKF", 58000);$(13_10)highscore_add("ECM", 40000);$(13_10)highscore_add("FFS", 30000);$(13_10)highscore_add("FFJ", 10000);$(13_10)highscore_add("DAD", 5000);$(13_10)highscore_add("USA", 4000);$(13_10)highscore_add("MOM", 3000);$(13_10)highscore_add("JJE", 2000);$(13_10)highscore_add("BOB", 1000);"
	highscore_clear();
	highscore_add("SAM", 68000);
	highscore_add("JKF", 58000);
	highscore_add("ECM", 40000);
	highscore_add("FFS", 30000);
	highscore_add("FFJ", 10000);
	highscore_add("DAD", 5000);
	highscore_add("USA", 4000);
	highscore_add("MOM", 3000);
	highscore_add("JJE", 2000);
	highscore_add("BOB", 1000);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 782CDF4F
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 72D7048E
	/// @DnDParent : 782CDF4F
	/// @DnDArgument : "expr" "highscore_value(1) < 10"
	if(highscore_value(1) < 10)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 49CAF4E0
		/// @DnDParent : 72D7048E
		/// @DnDArgument : "code" "highscore_add("SAM", 68000);$(13_10)highscore_add("JKF", 58000);$(13_10)highscore_add("ECM", 40000);$(13_10)highscore_add("FFS", 30000);$(13_10)highscore_add("FFJ", 10000);$(13_10)highscore_add("DAD", 5000);$(13_10)highscore_add("USA", 4000);$(13_10)highscore_add("MOM", 3000);$(13_10)highscore_add("JJE", 2000);$(13_10)highscore_add("BOB", 1000);"
		highscore_add("SAM", 68000);
		highscore_add("JKF", 58000);
		highscore_add("ECM", 40000);
		highscore_add("FFS", 30000);
		highscore_add("FFJ", 10000);
		highscore_add("DAD", 5000);
		highscore_add("USA", 4000);
		highscore_add("MOM", 3000);
		highscore_add("JJE", 2000);
		highscore_add("BOB", 1000);
	}
}