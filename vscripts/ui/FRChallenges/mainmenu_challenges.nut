global function InitFRChallengesMainMenu
global function OpenFRChallengesMainMenu
global function CloseFRChallengesMainMenu

struct
{
	var menu
} file

global string PlayerKillsForChallengesUI = ""

void function OpenFRChallengesMainMenu(int dummiesKilled)
{
	CloseAllMenus()
	PlayerKillsForChallengesUI = dummiesKilled.tostring()
	Hud_SetText(Hud_GetChild( file.menu, "DummiesKilledCounter"), "Dummies killed this session: " + dummiesKilled.tostring())
	EmitUISound("UI_Menu_SelectMode_Extend")
	AdvanceMenu( file.menu )
}

void function CloseFRChallengesMainMenu()
{
	CloseAllMenus()
}

void function InitFRChallengesMainMenu( var newMenuArg )
{
	var menu = GetMenu( "FRChallengesMainMenu" )
	file.menu = menu
    AddMenuEventHandler( menu, eUIEvent.MENU_SHOW, OnR5RSB_Show )
	AddMenuEventHandler( menu, eUIEvent.MENU_OPEN, OnR5RSB_Open )
	AddMenuEventHandler( menu, eUIEvent.MENU_CLOSE, OnR5RSB_Close )
	AddMenuEventHandler( menu, eUIEvent.MENU_NAVIGATE_BACK, OnR5RSB_NavigateBack )
	
	AddEventHandlerToButton( menu, "Settings", UIE_CLICK, SettingsButtonFunct )
	//var Challenge1 = Hud_GetChild( menu, "Challenge1" )
	//First column
	AddEventHandlerToButton( menu, "Challenge1", UIE_CLICK, Challenge1Funct )
	AddEventHandlerToButton( menu, "Challenge2", UIE_CLICK, Challenge2Funct )
	AddEventHandlerToButton( menu, "Challenge3", UIE_CLICK, Challenge3Funct )
	AddEventHandlerToButton( menu, "Challenge4", UIE_CLICK, Challenge4Funct )
	AddEventHandlerToButton( menu, "Challenge5", UIE_CLICK, Challenge5Funct )
	AddEventHandlerToButton( menu, "Challenge6", UIE_CLICK, Challenge6Funct )
	//Second column
	AddEventHandlerToButton( menu, "Challenge1NewC", UIE_CLICK, Challenge1NewCFunct )
	AddEventHandlerToButton( menu, "Challenge2NewC", UIE_CLICK, Challenge2NewCFunct )
	AddEventHandlerToButton( menu, "Challenge3NewC", UIE_CLICK, Challenge3NewCFunct )
	AddEventHandlerToButton( menu, "Challenge4NewC", UIE_CLICK, Challenge4NewCFunct )
	AddEventHandlerToButton( menu, "Challenge5NewC", UIE_CLICK, Challenge5NewCFunct )
	AddEventHandlerToButton( menu, "Challenge6NewC", UIE_CLICK, Challenge6NewCFunct )
}

bool function ShouldShowBackButton()
{
	return true
}

void function SettingsButtonFunct(var button)
{
	CloseAllMenus()
	EmitUISound("UI_Menu_SelectMode_Close")
	RunClientScript("ServerCallback_OpenFRChallengesSettings")
}

void function Challenge1Funct(var button)
{
	CloseAllMenus()
	EmitUISound("UI_Menu_SelectMode_Close")
	RunClientScript("StartChallenge1Client")
}

void function Challenge2Funct(var button)
{
	CloseAllMenus()
	EmitUISound("UI_Menu_SelectMode_Close")
	RunClientScript("StartChallenge2Client")
}

void function Challenge3Funct(var button)
{
	CloseAllMenus()
	EmitUISound("UI_Menu_SelectMode_Close")
	RunClientScript("StartChallenge3Client")
}

void function Challenge4Funct(var button)
{
	CloseAllMenus()
	EmitUISound("UI_Menu_SelectMode_Close")
	RunClientScript("StartChallenge4Client")
}

void function Challenge5Funct(var button)
{
	CloseAllMenus()
	EmitUISound("UI_Menu_SelectMode_Close")
	RunClientScript("StartChallenge5Client")
}
void function Challenge6Funct(var button)
{
	CloseAllMenus()
	EmitUISound("UI_Menu_SelectMode_Close")
	RunClientScript("StartChallenge6Client")
}
void function Challenge1NewCFunct(var button)
{
	CloseAllMenus()
	EmitUISound("UI_Menu_SelectMode_Close")
	RunClientScript("StartChallenge1NewCClient")
}

void function Challenge2NewCFunct(var button)
{
	CloseAllMenus()
	EmitUISound("UI_Menu_SelectMode_Close")
	RunClientScript("StartChallenge2NewCClient")
}

void function Challenge3NewCFunct(var button)
{
	CloseAllMenus()
	EmitUISound("UI_Menu_SelectMode_Close")
	RunClientScript("StartChallenge3NewCClient")
}

void function Challenge4NewCFunct(var button)
{
	CloseAllMenus()
	EmitUISound("UI_Menu_SelectMode_Close")
	RunClientScript("StartChallenge4NewCClient")
}

void function Challenge5NewCFunct(var button)
{
	CloseAllMenus()
	EmitUISound("UI_Menu_SelectMode_Close")
	RunClientScript("StartChallenge5NewCClient")
}
void function Challenge6NewCFunct(var button)
{
	CloseAllMenus()
	EmitUISound("UI_Menu_SelectMode_Close")
	RunClientScript("StartChallenge6NewCClient")
}

void function OnR5RSB_Show()
{
    //
}

void function OnR5RSB_Open()
{
	//
}


void function OnR5RSB_Close()
{
	//
}

void function OnR5RSB_NavigateBack()
{
    //
}