
// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Menu" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

fundo = createsprite(LoadImage("wallpaper.jpg"))

global sprite as integer
sprite = createsprite(LoadImage("sprite.png"))

global sons as integer
sons = createsprite(LoadImage("sons.png"))

global saida as integer
saida = createsprite(LoadImage("saida.png"))

#include "loader.agc"
gosub Loader
#include "sounds.agc"
gosub Load_sounds
gosub Load_Music
#include "Menu.agc"



global menu as integer
menu= 0

do
    gosub Menu
    
    clickableSprite()
    Sync()
loop

function clickableSprite()
	
	x = GetPointerX()
	y = GetPointerY()
	
	if GetPointerReleased()
		
		if GetSpriteHitTest(sprite,GetPointerX(),GetPointerY())
			menu=1
		elseif GetSpriteHitTest(sons,GetPointerX(),GetPointerY())
			menu=2
		elseif 	GetSpriteHitTest(saida,GetPointerX(),GetPointerY())
			menu=0
		elseif 	GetSpriteHitTest(play,GetPointerX(),GetPointerY())
			PlaySound(ricochet)
		elseif 	GetSpriteHitTest(play2,GetPointerX(),GetPointerY())
			PlaySound(lazershoot)
		elseif 	GetSpriteHitTest(play3,GetPointerX(),GetPointerY())
			PlaySound(failed)
		endif
		
	endif
		
endfunction	
