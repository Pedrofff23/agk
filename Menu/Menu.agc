Menu:

if menu=0
	
	SetSpritePosition(sprite, 420, 200)
	SetSpritePosition(sons, 420, 300)
	SetSpritePosition(saida, 200,600)
	
	gosub Hidegamesprites
endif


if menu=1
	gosub Showgamesprites
endif

if menu=2
	gosub Showgamesprites2
endif	
return

Hidegamesprites:
for i=1 to 114 and saida and saida and sprite
	SetSpriteVisible(saida,0)
	SetSpriteVisible(sons,1)
	SetSpriteVisible(sprite,1)
	
	SetSpriteVisible(nave,0)
	SetSpriteVisible(lazer,0)
	SetSpriteVisible(meteoro1,0)
	SetSpriteVisible(animacao,0)
	
	SetSpriteVisible(play,0)
	SetSpriteVisible(play2,0)
	SetSpriteVisible(play3,0)
	SetTextVisible(1,0)
	SetTextVisible(2,0)
	SetTextVisible(3,0)
next i
Return

Showgamesprites:
for i=1 to 114 and sons and saida and sprite
	SetSpriteVisible(sons,0)
	SetSpriteVisible(sprite,0)
	SetSpriteVisible(saida,1)
	
	SetSpriteVisible(nave,1)
	SetSpriteVisible(lazer,1)
	SetSpriteVisible(meteoro1,1)
	SetSpriteVisible(animacao,1)
	
	SetSpriteVisible(play,0)
	SetSpriteVisible(play2,0)
	SetSpriteVisible(play3,0)
	SetTextVisible(1,0)
	SetTextVisible(2,0)
	SetTextVisible(3,0)
next i
Return

Showgamesprites2:
for i=1 to 114 and sons and saida and sprite
	SetSpriteVisible(sons,0)
	SetSpriteVisible(sprite,0)
	SetSpriteVisible(saida,1)
	
	SetSpriteVisible(nave,0)
	SetSpriteVisible(lazer,0)
	SetSpriteVisible(meteoro1,0)
	SetSpriteVisible(animacao,0)
	
	SetSpriteVisible(play,1)
	SetSpriteVisible(play2,1)
	SetSpriteVisible(play3,1)
	SetTextVisible(1,1)
	SetTextVisible(2,1)
	SetTextVisible(3,1)
next i
Return
