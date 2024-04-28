/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2259827D
/// @DnDArgument : "code" "//player states$(13_10)enum ps {$(13_10)	IDLE,$(13_10)	WALK,$(13_10)	STUN,$(13_10)	INVUL,$(13_10)	ATTACK,$(13_10)	AIR,$(13_10)	DEAD,$(13_10)}$(13_10)$(13_10)//enemy states$(13_10)enum es {$(13_10)	IDLE,$(13_10)	WALK,$(13_10)	SIDE,$(13_10)	UP,$(13_10)	DIAG,$(13_10)	INVUL,$(13_10)	ATTACK,$(13_10)	AIR,$(13_10)	STUN,$(13_10)	DEAD,$(13_10)}$(13_10)$(13_10)//ralph moods$(13_10)enum ralph {$(13_10)	SAD,$(13_10)	MAD,$(13_10)	SURPRISE,$(13_10)	SCARED,$(13_10)	SCAREDLEFT,$(13_10)	SCAREDRIGHT,$(13_10)}$(13_10)$(13_10)//ralph states$(13_10)enum r {$(13_10)	IDLE,$(13_10)	MOVEUP,$(13_10)	MOVEDOWN,$(13_10)	MOVELEFT,$(13_10)	MOVERIGHT,$(13_10)	ATTACKLEFT,$(13_10)	ATTACKRIGHT,$(13_10)}	$(13_10)	$(13_10)"
//player states
enum ps {
	IDLE,
	WALK,
	STUN,
	INVUL,
	ATTACK,
	AIR,
	DEAD,
}

//enemy states
enum es {
	IDLE,
	WALK,
	SIDE,
	UP,
	DIAG,
	INVUL,
	ATTACK,
	AIR,
	STUN,
	DEAD,
}

//ralph moods
enum ralph {
	SAD,
	MAD,
	SURPRISE,
	SCARED,
	SCAREDLEFT,
	SCAREDRIGHT,
}

//ralph states
enum r {
	IDLE,
	MOVEUP,
	MOVEDOWN,
	MOVELEFT,
	MOVERIGHT,
	ATTACKLEFT,
	ATTACKRIGHT,
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 44CB3BE9
/// @DnDArgument : "value" "0.10"
/// @DnDArgument : "var" "grav"
global.grav = 0.10;