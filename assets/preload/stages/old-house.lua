function onCreate()
	-- background shit
	makeLuaSprite('house2', 'house2', -350, -0);
	setScrollFactor('house2', 0.9, 0.9);
	scaleObject('house2', 0.8, 0.8);
	
	makeAnimatedLuaSprite('donald', 'donald', -100, -50);
	addAnimationByPrefix('donald','donald','donald',7,true)
	objectPlayAnimation('donald','donald',false)
        scaleObject('alley', 1, 1);

	if not lowQuality then
		makeLuaSprite('nothing', 'nothing', -500, -300);
		setScrollFactor('nothing', 1.3, 1.3);
		scaleObject('nothing', 0.9, 0.9);
	end

	addLuaSprite('house2', false);
	addLuaSprite('nothing', false);
	addLuaSprite('donald', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end