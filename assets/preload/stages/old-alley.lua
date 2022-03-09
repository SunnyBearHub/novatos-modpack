function onCreate()
	-- background shit
	makeAnimatedLuaSprite('alley', 'alle', -300, -170);
	addAnimationByPrefix('alley','alley','alley',7,true)
	objectPlayAnimation('alley','alley',false)
    scaleObject('alley', 1, 1);
    
	if not lowQuality then

		makeLuaSprite('nothing', 'nothing', -500, -300);
		setScrollFactor('nothing', 1.3, 1.3);
		scaleObject('nothing', 0.9, 0.9);
	end

	addLuaSprite('alley', false);
	addLuaSprite('nothing', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end