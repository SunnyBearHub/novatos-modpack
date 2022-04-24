function onCreate()
	
        makeLuaSprite('stages/front', 'front', 500, -200);
	addLuaSprite('stages/front',false)
        setLuaSpriteScrollFactor('front', 0.9, 0.9);
	
	makeLuaSprite('stages/house', 'stages/house', -350, -150);
	addLuaSprite('stages/house',false)
        setLuaSpriteScrollFactor('stages/house', 0.9, 0.9);
end
	