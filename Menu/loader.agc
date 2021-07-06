Loader:

imageA = LoadImage("spaceship1.png")
imageB = LoadImage("meteoro.png")
imageC = LoadImage("lazer.png")
imageD = LoadImage("spaceshipanimeted.png")

imageA = LoadImage("spaceship1.png")
imageB = LoadImage("meteoro.png")
imageC = LoadImage("lazer.png")
imageD = LoadImage("spaceshipanimeted.png")
imageE = LoadImage("play.png")

animacao = CreateSprite(imageD)
SetSpritePosition(animacao,600,200)
SetSpriteAnimation(animacao,32,32,8)
PlaySprite(animacao)

nave = CreateSprite (imageA)
lazer = CreateSprite(imageC)
meteoro1 = CreateSprite(imageB)
play = CreateSprite(imageE)
play2 = CreateSprite(imageE)
play3 = CreateSprite(imageE)

global play as integer
global play2 as integer
global play3 as integer

	setspritesize(play, 30, 30)
	setspritesize(play2, 30, 30)
	setspritesize(play3, 30, 30)
	
	SetSpritePosition(nave, 420, 200)
	SetSpritePosition(lazer, 420, 300)
	SetSpritePosition(meteoro1, 420, 400)
	
	CreateText(1, "lazer.wav")
	SetTextPosition(1,410,250)
	SetTextSize(1,20)
	SetSpritePosition(play,370,245)
	
	CreateText(2, "lazershoot.wav")
	SetTextPosition(2,410,300)
	SetTextSize(2,20)
	SetSpritePosition(play2,370,295)
	
	CreateText(3, "failed.wav")
	SetTextPosition(3,410,350)
	SetTextSize(3,20)
	SetSpritePosition(play3,370,345)
return
