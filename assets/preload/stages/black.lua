function onCreate()
	
        makeLuaSprite('stages/front', 'stages/front', 500, -200);
	addLuaSprite('stages/front',false)
        setLuaSpriteScrollFactor('stages/front', 0.9, 0.9);
	
	makeLuaSprite('stages/black', 'stages/black', -350, -150);
	addLuaSprite('stages/black',false)
        setLuaSpriteScrollFactor('stages/black', 0.9, 0.9);
end
	