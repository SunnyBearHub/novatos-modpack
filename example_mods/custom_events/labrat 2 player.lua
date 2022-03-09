function onCreate()
	makeAnimatedLuaSprite('experiment_assets', 'characters/experiment_assets', -50, 150); -- change 'character' to the name of your character, change 'dad' to the name of the .png and .xml file

	addAnimationByPrefix('experiment_assets', 'idle', 'idle', 24, false); -- change 'character' to the name of your character, don't change 'idle', change 'Dad idle dance' to the idle animation in your xml file
	addAnimationByPrefix('experiment_assets', 'singLEFT', 'left', 24, false); -- repeat this for each one ^^^
	addAnimationByPrefix('experiment_assets', 'singDOWN', 'right', 24, false);
	addAnimationByPrefix('experiment_assets', 'singUP', 'up', 24, false);
	addAnimationByPrefix('experiment_assets', 'singRIGHT', 'down', 24, false);

	objectPlayAnimation('experiment_assets', 'idle'); -- change 'character'
	addLuaSprite('experiment_assets', true); -- change 'character' to the name of your character and put the 'false' to true if you want the character to be in front of the original characters
end

local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'character' then
		objectPlayAnimation('experiment_assets', singAnims[direction + 1], false)
	end
end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('experiment_assets', 'idle');
	end
end
function onStepHit()
if curStep == 800 then
onCreate = true
end
end


function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		objectPlayAnimation('experiment_assets', 'idle');
	end
end
function onUpdate(elapsed)
	doTweenAlpha('onCreate', 'dad', 'dad.alpha', 0, 'linear')
end

