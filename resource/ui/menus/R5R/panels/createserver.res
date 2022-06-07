scripts/resource/ui/menus/R5R/panels/createserver.res
{
	"DarkenBackground"
	{
		ControlName				Label
		xpos					0
		ypos					0
		wide					%100
		tall					%100
		labelText				""
		bgcolor_override		"0 0 0 0"
		visible					1
		paintbackground			1
	}

	"CreateServerBG"
	{
		ControlName				ImagePanel
		ypos 			-642
		xpos			-20
		wide			490
		tall            350
		fillColor		"30 30 30 100"
        drawColor		"30 30 30 100"
		visible					1
		zpos					0
		pin_to_sibling				DarkenBackground
		pin_corner_to_sibling		BOTTOM_LEFT
		pin_to_sibling_corner		BOTTOM_LEFT
	}

	"CreateServerBGTopLine"
	{
		ControlName				ImagePanel
		wide			490
		tall            3
		fillColor		"195 29 38 200"
        drawColor		"195 29 38 200"
		visible					1
		zpos					0
		pin_to_sibling				CreateServerBG
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

	"CreateServerBGBottomLine"
	{
		ControlName				ImagePanel
		wide			490
		tall            3
		fillColor		"195 29 38 200"
        drawColor		"195 29 38 200"
		visible					1
		zpos					0
		pin_to_sibling				CreateServerBG
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		TOP
	}

	ServerMapImg
	{
		ControlName		RuiPanel
		wide			480
		tall            270
		visible			1
		rui           	"ui/custom_loadscreen_image.rpak"
		ypos 			-215
		xpos			-25
		zpos 4

		pin_to_sibling				DarkenBackground
		pin_corner_to_sibling		BOTTOM_LEFT
		pin_to_sibling_corner		BOTTOM_LEFT
	}

	"ServerMapImgTopLine"
	{
		ControlName				ImagePanel
		wide			480
		tall            3
		fillColor		"195 29 38 200"
        drawColor		"195 29 38 200"
		visible					1
		zpos					0
		pin_to_sibling				ServerMapImg
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

	"ServerMapImgBottomLine"
	{
		ControlName				ImagePanel
		wide			480
		tall            3
		fillColor		"195 29 38 200"
        drawColor		"195 29 38 200"
		visible					1
		zpos					0
		pin_to_sibling				ServerMapImg
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		TOP
	}

	PlaylistNameBG
	{
		ControlName				ImagePanel
		xpos 0
		ypos -15
		tall					30
		wide 					225
		fillColor		"30 30 30 200"
        drawColor		"30 30 30 200"
		wrap					1
		visible					1
		zpos					6
		pin_to_sibling				ServerMapImg
		pin_corner_to_sibling		BOTTOM_RIGHT
		pin_to_sibling_corner		BOTTOM_RIGHT
	}

	PlaylistInfoEdit
	{
		ControlName				Label
		labelText				"custom_tdm"
		font					Default_27_Outline
		"allcaps"				"1"
		wide					225
		zpos 					7
		fontHeight				25
		textAlignment			"center"
		xpos					5
		ypos					0
		fgcolor_override		"240 240 240 255"
		bgcolor_override		"0 0 0 255"

		pin_to_sibling				PlaylistNameBG
		pin_corner_to_sibling		RIGHT
		pin_to_sibling_corner		RIGHT
	}

	VisBG
	{
		ControlName				ImagePanel
		xpos 0
		ypos -15
		tall					30
		wide 					125
		fillColor		"30 30 30 200"
        drawColor		"30 30 30 200"
		wrap					1
		visible					1
		zpos					6
		pin_to_sibling				ServerMapImg
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		TOP_LEFT
	}

	VisInfoEdit
	{
		ControlName				Label
		labelText				"custom_tdm"
		font					Default_27_Outline
		"allcaps"				"1"
		wide					125
		zpos 					7
		fontHeight				25
		textAlignment			"center"
		xpos					0
		ypos					0
		fgcolor_override		"240 240 240 255"
		bgcolor_override		"0 0 0 255"

		pin_to_sibling				VisBG
		pin_corner_to_sibling		RIGHT
		pin_to_sibling_corner		RIGHT
	}

	StartGamePanel
	{
		ControlName RuiPanel
		wide 480
		tall 50
		xpos 0
		ypos 165

		rui "ui/control_options_description.rpak"

		visible 1
		zpos 0

		pin_to_sibling			ServerMapImg
		pin_corner_to_sibling	BOTTOM_LEFT
		pin_to_sibling_corner	TOP_LEFT
	}

	BtnStartGame
	{
		ControlName RuiButton
		InheritProperties RuiSmallButton
		wide 480
		tall 50
		xpos 0
		ypos 0
		zpos 6


		pin_to_sibling StartGamePanel
		pin_corner_to_sibling CENTER
		pin_to_sibling_corner CENTER
	}

	BtnStartGameText
	{
		ControlName				Label
		labelText				"Start Game"
		"font"					"DefaultBold_41"
		"allcaps"				"1"
		auto_wide_tocontents	1
		zpos 					3
		fontHeight				25
		xpos					0
		ypos					0
		"fgcolor_override"		"255 255 255 255"

		pin_to_sibling StartGamePanel
		pin_corner_to_sibling CENTER
		pin_to_sibling_corner CENTER
	}

	PlaylistPanel
	{
		ControlName RuiPanel
		wide 480
		tall 50
		xpos 0
		ypos 5

		rui "ui/control_options_description.rpak"

		visible 1
		zpos 0

		pin_to_sibling			VisPanel
		pin_corner_to_sibling	BOTTOM_LEFT
		pin_to_sibling_corner	TOP_LEFT
	}

	BtnPlaylist
	{
		ControlName RuiButton
		InheritProperties RuiSmallButton
		wide 480
		tall 50
		xpos 0
		ypos 0
		zpos 6
		classname			"createserverbuttons"
		"scriptID"					"1"


		pin_to_sibling PlaylistPanel
		pin_corner_to_sibling CENTER
		pin_to_sibling_corner CENTER
	}

	BtnPlaylistText
	{
		ControlName				Label
		labelText				"Select Playlist"
		"font"					"DefaultBold_41"
		"allcaps"				"1"
		auto_wide_tocontents	1
		zpos 					3
		fontHeight				25
		xpos					0
		ypos					0
		"fgcolor_override"		"255 255 255 255"

		pin_to_sibling PlaylistPanel
		pin_corner_to_sibling CENTER
		pin_to_sibling_corner CENTER
	}

	VisPanel
	{
		ControlName RuiPanel
		wide 480
		tall 50
		xpos 0
		ypos 50

		rui "ui/control_options_description.rpak"

		visible 1
		zpos 0

		pin_to_sibling			StartGamePanel
		pin_corner_to_sibling	BOTTOM_LEFT
		pin_to_sibling_corner	TOP_LEFT
	}

	BtnVis
	{
		ControlName RuiButton
		InheritProperties RuiSmallButton
		wide 480
		tall 50
		xpos 0
		ypos 0
		zpos 6
		classname			"createserverbuttons"
		"scriptID"					"2"


		pin_to_sibling VisPanel
		pin_corner_to_sibling CENTER
		pin_to_sibling_corner CENTER
	}

	BtnVisText
	{
		ControlName				Label
		labelText				"Select Visibility"
		"font"					"DefaultBold_41"
		"allcaps"				"1"
		auto_wide_tocontents	1
		zpos 					3
		fontHeight				25
		xpos					0
		ypos					0
		"fgcolor_override"		"255 255 255 255"

		pin_to_sibling VisPanel
		pin_corner_to_sibling CENTER
		pin_to_sibling_corner CENTER
	}

	MapPanel
	{
		ControlName RuiPanel
		wide 480
		tall 50
		xpos 0
		ypos 5

		rui "ui/control_options_description.rpak"

		visible 1
		zpos 0

		pin_to_sibling			PlaylistPanel
		pin_corner_to_sibling	BOTTOM_LEFT
		pin_to_sibling_corner	TOP_LEFT
	}

	BtnMap
	{
		ControlName RuiButton
		InheritProperties RuiSmallButton
		wide 480
		tall 50
		xpos 0
		ypos 0
		zpos 6
		classname			"createserverbuttons"
		"scriptID"					"0"


		pin_to_sibling MapPanel
		pin_corner_to_sibling CENTER
		pin_to_sibling_corner CENTER
	}

	BtnMapText
	{
		ControlName				Label
		labelText				"Select Map"
		"font"					"DefaultBold_41"
		"allcaps"				"1"
		auto_wide_tocontents	1
		zpos 					3
		fontHeight				25
		xpos					0
		ypos					0
		"fgcolor_override"		"255 255 255 255"

		pin_to_sibling MapPanel
		pin_corner_to_sibling CENTER
		pin_to_sibling_corner CENTER
	}

	BtnServerName
	{
		ControlName				TextEntry
		zpos					100 // This works around input weirdness when the control is constructed by code instead of VGUI blackbox.
		wide					480
		tall					50
		xpos					0
		ypos					5
		allowRightClickMenu		0
		allowSpecialCharacters	0
		unicode					0

		keyboardTitle			"Enter Server Name"
		keyboardDescription		"Enter Server Name"

		visible					1
		enabled					1
		textHidden				0
		editable				1
		maxchars				100
		textAlignment			"center"
		ruiFont                 TitleRegularFont
		ruiFontHeight           22
		ruiMinFontHeight        16
		bgcolor_override		"30 30 30 200"

		pin_to_sibling MapPanel
		pin_corner_to_sibling	BOTTOM
		pin_to_sibling_corner	TOP
	}

	CreateServerTxT
	{
		ControlName				Label
		labelText				"Server Name:"
		"font"					"DefaultBold_41"
		"allcaps"				"1"
		tall					20
		auto_wide_tocontents	1
		zpos 					3
		fontHeight				20
		xpos					0
		ypos					2
		"fgcolor_override"		"255 255 255 255"

		pin_to_sibling BtnServerName
		pin_corner_to_sibling	BOTTOM_LEFT
		pin_to_sibling_corner	TOP_LEFT
	}

	"R5RPlaylistPanel"
    {
    	"ControlName"				"CNestedPanel"
    	"ypos"						"20"
    	"wide"						"f0"
		"tall"						"960"
		"visible"					"0"
    	"controlSettingsFile"		"scripts/resource/ui/menus/R5R/panels/playlist.res"
    	"proportionalToParent"    	"1"

    	"pin_to_sibling"          	"DarkenBackground"
    	"pin_corner_to_sibling"		"TOP_RIGHT"
    	"pin_to_sibling_corner"		"TOP_RIGHT"
    }

	"R5RMapPanel"
    {
    	"ControlName"				"CNestedPanel"
    	"ypos"						"20"
    	"wide"						"f0"
		"tall"						"960"
		"visible"					"0"
    	"controlSettingsFile"		"scripts/resource/ui/menus/R5R/panels/map.res"
    	"proportionalToParent"    	"1"

    	"pin_to_sibling"          	"DarkenBackground"
    	"pin_corner_to_sibling"		"TOP_RIGHT"
    	"pin_to_sibling_corner"		"TOP_RIGHT"
    }

	"R5RVisPanel"
    {
    	"ControlName"				"CNestedPanel"
    	"ypos"						"20"
    	"wide"						"f0"
		"tall"						"960"
		"visible"					"0"
    	"controlSettingsFile"		"scripts/resource/ui/menus/R5R/panels/visibility.res"
    	"proportionalToParent"    	"1"

    	"pin_to_sibling"          	"DarkenBackground"
    	"pin_corner_to_sibling"		"TOP_RIGHT"
    	"pin_to_sibling_corner"		"TOP_RIGHT"
    }
}
