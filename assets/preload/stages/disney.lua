function onCreate()
	
        makeLuaSprite('stages/tree', 'stages/tree', 500, -200);
	addLuaSprite('stages/tree',false)
        setLuaSpriteScrollFactor('stages/tree', 0.9, 0.9);
	
	makeLuaSprite('stages/disney', 'stages/disney', -200, -150);
	addLuaSprite('stages/disney',false)
        setLuaSpriteScrollFactor('stages/disney', 0.9, 0.9);
end
	