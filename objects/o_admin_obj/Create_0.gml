/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 3A7AD9B5
/// @DnDDisabled : 1
/// @DnDArgument : "filename" ""settings.ini""


/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 6A7C81F9
/// @DnDDisabled : 1
/// @DnDArgument : "var" "global.freeplay"
/// @DnDArgument : "section" ""Settings""
/// @DnDArgument : "key" ""Freeplay""
/// @DnDArgument : "default" ""false""


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 06A7319F
/// @DnDDisabled : 1
/// @DnDArgument : "code" "Coin_1 = ini_read_real("Controls", "Coin_1", 53);$(13_10)Coin_2 = ini_read_real("Controls", "Coin_2", 54);$(13_10)Coin_3 = ini_read_real("Controls", "Coin_3", 55);$(13_10)Coin_4 = ini_read_real("Controls", "Coin_4", 56);$(13_10)Start_1 = ini_read_real("Controls", "Start_1", 49);$(13_10)Start_2 = ini_read_real("Controls", "Start_2", 50);$(13_10)Start_1B = ini_read_real("Controls", "Start_1B", 51);$(13_10)Start_2B = ini_read_real("Controls", "Start_2B", 52);$(13_10)P1_Left = ini_read_real("Controls", "P1_Left", 37);$(13_10)P1_Right = ini_read_real("Controls", "P1_Right", 39);$(13_10)P1_Button1 = ini_read_real("Controls", "P1_Button1", 162);$(13_10)P1_Button2 = ini_read_real("Controls", "P1_Button2", 164);$(13_10)P2_Left = ini_read_real("Controls", "P2_Left", 44);$(13_10)P2_Right = ini_read_real("Controls", "P2_Right", 47);$(13_10)P2_Button1 = ini_read_real("Controls", "P2_Button1", 65);$(13_10)P2_Button2 = ini_read_real("Controls", "P2_Button2", 83);$(13_10)Exit = ini_read_real("Controls", "Exit", 27);$(13_10)global.screens = ini_read_real("Settings", "Screens", 1);$(13_10)//Coin 1$(13_10)keyboard_set_map(Coin_1, ord("5"));$(13_10)//Coin 2$(13_10)keyboard_set_map(Coin_2, ord("6"));$(13_10)//Coin 3$(13_10)keyboard_set_map(Coin_3, ord("7"));$(13_10)//Coin 4$(13_10)keyboard_set_map(Coin_4, ord("8"));$(13_10)//1 Start$(13_10)keyboard_set_map(Start_1, ord("1"));$(13_10)//2 Start$(13_10)keyboard_set_map(Start_2, ord("2"));$(13_10)//1 Start B$(13_10)keyboard_set_map(Start_1B, ord("3"));$(13_10)//2 Start B$(13_10)keyboard_set_map(Start_2B, ord("4"));$(13_10)//P1 Left$(13_10)keyboard_set_map(P1_Left, vk_left);$(13_10)//P1 Right$(13_10)keyboard_set_map(P1_Right, vk_right);$(13_10)//P1 Button1$(13_10)keyboard_set_map(P1_Button1, vk_control);$(13_10)//P1 Button2$(13_10)keyboard_set_map(P1_Button2, vk_alt);$(13_10)//P2 Left$(13_10)keyboard_set_map(P2_Left, ord("D"));$(13_10)//P2 Right$(13_10)keyboard_set_map(P2_Right, ord("G"));$(13_10)//P2 Button1$(13_10)keyboard_set_map(P2_Button1, ord("A"));$(13_10)//P2 Button2$(13_10)keyboard_set_map(P2_Button2, ord("S"));$(13_10)//Exit$(13_10)keyboard_set_map(Exit, vk_escape);$(13_10)//Create viewports based on screens settings$(13_10)if global.screens = 1$(13_10)	{$(13_10)	view_set_visible(1, false);$(13_10)	window_set_size(512, 480);$(13_10)	surface_resize(application_surface, 512, 480);$(13_10)	}$(13_10)global.monitors = ini_read_real("Settings", "Monitors", 1);$(13_10)if global.monitors = 2$(13_10)	{$(13_10)	hmonitor = ini_read_real("Settings", "Hresolution", 1920);$(13_10)	vmonitor = ini_read_real("Settings", "Vresolution", 1080);$(13_10)	global.hsmall = (hmonitor * 480) / vmonitor;$(13_10)	global.newposition = (global.hsmall - 512) / 2$(13_10)	camera_set_view_size(view_camera[0], global.hsmall, 480);$(13_10)	camera_set_view_size(view_camera[1], global.hsmall, 480);$(13_10)	camera_set_view_pos(view_camera[0], 0 - global.newposition, 416);$(13_10)	camera_set_view_pos(view_camera[1], 0 - global.newposition, 0);$(13_10)	surface_resize(application_surface, global.hsmall * 2, 480);$(13_10)	window_set_size(hmonitor * 2, vmonitor);$(13_10)	window_set_position(0, 0);$(13_10)	primarymonitor = ini_read_string("Settings", "Primary_Monitor", "left");$(13_10)if primarymonitor = "right"$(13_10)		{$(13_10)		window_set_position(-hmonitor, 0);$(13_10)		}$(13_10)	}$(13_10)else$(13_10)	{$(13_10)	hmonitor = ini_read_real("Settings", "Hresolution", 1920);$(13_10)	vmonitor = ini_read_real("Settings", "Vresolution", 1080);$(13_10)	window_set_size(hmonitor, vmonitor);$(13_10)	window_set_position(0, 0);$(13_10)	}"


/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 18E935B4
/// @DnDDisabled : 1
/// @DnDArgument : "var" "global.freeplay"
/// @DnDArgument : "section" ""Settings""
/// @DnDArgument : "key" ""Freeplay""
/// @DnDArgument : "default" ""false""


/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 7FC9BF2D
/// @DnDDisabled : 1
/// @DnDArgument : "var" "global.playerlives"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""Settings""
/// @DnDArgument : "key" ""Lives""
/// @DnDArgument : "default" ""2""


/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 2207A129
/// @DnDDisabled : 1
/// @DnDArgument : "var" "global.freelife"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""Settings""
/// @DnDArgument : "key" ""Freelife""
/// @DnDArgument : "default" "5000"


/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 055A4A81
/// @DnDDisabled : 1


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F49C13D
/// @DnDDisabled : 1
/// @DnDArgument : "var" "global.freeplay"
/// @DnDArgument : "value" ""true""
/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 71A1C31E
/// @DnDDisabled : 1
/// @DnDParent : 7F49C13D
/// @DnDArgument : "value" "9999"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "coins"

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A6451CF
/// @DnDDisabled : 1
/// @DnDArgument : "var" "global.playerlives"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "5"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 670CBFA8
/// @DnDDisabled : 1
/// @DnDParent : 6A6451CF
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "global.playerlives"

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 62A4D6F9
/// @DnDDisabled : 1
/// @DnDArgument : "font" "arcade_font"
/// @DnDSaveInfo : "font" "arcade_font"


/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 547C845E
/// @DnDDisabled : 1
/// @DnDArgument : "alpha" "false"


/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 51217DC9
/// @DnDDisabled : 1
/// @DnDArgument : "steps" "15"
/// @DnDArgument : "alarm" "11"