/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 3A7AD9B5
/// @DnDArgument : "filename" ""settings.ini""
ini_open("settings.ini");

/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 6A7C81F9
/// @DnDArgument : "var" "global.freeplay"
/// @DnDArgument : "section" ""Settings""
/// @DnDArgument : "key" ""Freeplay""
/// @DnDArgument : "default" ""false""
global.freeplay = ini_read_string("Settings", "Freeplay", "false");

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 06A7319F
/// @DnDArgument : "code" "Coin_1 = ini_read_real("Controls", "Coin_1", 53);$(13_10)Coin_2 = ini_read_real("Controls", "Coin_2", 54);$(13_10)Start_1 = ini_read_real("Controls", "Start_1", 49);$(13_10)Start_2 = ini_read_real("Controls", "Start_2", 50);$(13_10)P1_Left = ini_read_real("Controls", "P1_Left", 37);$(13_10)P1_Right = ini_read_real("Controls", "P1_Right", 39);$(13_10)P1_Down =  ini_read_real("Controls", "P1_Down", 40);$(13_10)P1_Up =  ini_read_real("Controls", "P1_Up", 38);$(13_10)P1_Button1 = ini_read_real("Controls", "P1_Button1", 162);$(13_10)P1_Button2 = ini_read_real("Controls", "P1_Button2", 164);$(13_10)Exit = ini_read_real("Controls", "Exit", 27);$(13_10)global.screens = ini_read_real("Settings", "Screens", 1);$(13_10)//Coin 1$(13_10)keyboard_set_map(Coin_1, ord("5"));$(13_10)//Coin 2$(13_10)keyboard_set_map(Coin_2, ord("6"));$(13_10)//1 Start$(13_10)keyboard_set_map(Start_1, ord("1"));$(13_10)//2 Start$(13_10)keyboard_set_map(Start_2, ord("2"));$(13_10)//P1 Left$(13_10)keyboard_set_map(P1_Left, vk_left);$(13_10)//P1 Right$(13_10)keyboard_set_map(P1_Right, vk_right);$(13_10)//P1 Down$(13_10)keyboard_set_map(P1_Down, vk_down);$(13_10)//P1 Up$(13_10)keyboard_set_map(P1_Up, vk_up);$(13_10)//P1 Button1$(13_10)keyboard_set_map(P1_Button1, vk_control);$(13_10)//P1 Button2$(13_10)keyboard_set_map(P1_Button2, vk_alt);$(13_10)//Exit$(13_10)keyboard_set_map(Exit, vk_escape);"
Coin_1 = ini_read_real("Controls", "Coin_1", 53);
Coin_2 = ini_read_real("Controls", "Coin_2", 54);
Start_1 = ini_read_real("Controls", "Start_1", 49);
Start_2 = ini_read_real("Controls", "Start_2", 50);
P1_Left = ini_read_real("Controls", "P1_Left", 37);
P1_Right = ini_read_real("Controls", "P1_Right", 39);
P1_Down =  ini_read_real("Controls", "P1_Down", 40);
P1_Up =  ini_read_real("Controls", "P1_Up", 38);
P1_Button1 = ini_read_real("Controls", "P1_Button1", 162);
P1_Button2 = ini_read_real("Controls", "P1_Button2", 164);
Exit = ini_read_real("Controls", "Exit", 27);
global.screens = ini_read_real("Settings", "Screens", 1);
//Coin 1
keyboard_set_map(Coin_1, ord("5"));
//Coin 2
keyboard_set_map(Coin_2, ord("6"));
//1 Start
keyboard_set_map(Start_1, ord("1"));
//2 Start
keyboard_set_map(Start_2, ord("2"));
//P1 Left
keyboard_set_map(P1_Left, vk_left);
//P1 Right
keyboard_set_map(P1_Right, vk_right);
//P1 Down
keyboard_set_map(P1_Down, vk_down);
//P1 Up
keyboard_set_map(P1_Up, vk_up);
//P1 Button1
keyboard_set_map(P1_Button1, vk_control);
//P1 Button2
keyboard_set_map(P1_Button2, vk_alt);
//Exit
keyboard_set_map(Exit, vk_escape);

/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 18E935B4
/// @DnDArgument : "var" "global.freeplay"
/// @DnDArgument : "section" ""Settings""
/// @DnDArgument : "key" ""Freeplay""
/// @DnDArgument : "default" ""false""
global.freeplay = ini_read_string("Settings", "Freeplay", "false");

/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 7FC9BF2D
/// @DnDArgument : "var" "global.playerlives"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""Settings""
/// @DnDArgument : "key" ""Lives""
/// @DnDArgument : "default" ""2""
global.playerlives = ini_read_real("Settings", "Lives", "2");

/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 2207A129
/// @DnDArgument : "var" "global.freelife"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""Settings""
/// @DnDArgument : "key" ""Freelife""
/// @DnDArgument : "default" "5000"
global.freelife = ini_read_real("Settings", "Freelife", 5000);

/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 055A4A81
ini_close();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F49C13D
/// @DnDArgument : "var" "global.freeplay"
/// @DnDArgument : "value" ""true""
if(global.freeplay == "true")
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 71A1C31E
	/// @DnDParent : 7F49C13D
	/// @DnDArgument : "value" "9999"
	/// @DnDArgument : "var" "coins"
	global.coins = 9999;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A6451CF
/// @DnDArgument : "var" "global.playerlives"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "5"
if(global.playerlives > 5)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 670CBFA8
	/// @DnDParent : 6A6451CF
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "var" "global.playerlives"
	global.playerlives = 5;
}

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 62A4D6F9
/// @DnDArgument : "font" "arcade_font"
/// @DnDSaveInfo : "font" "arcade_font"
draw_set_font(arcade_font);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 547C845E
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 49CE8AAF
/// @DnDInput : 2
/// @DnDArgument : "var" "p1_score"
/// @DnDArgument : "var_1" "p2_score"
global.p1_score = 0;
global.p2_score = 0;