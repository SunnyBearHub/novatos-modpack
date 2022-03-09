function onUpdate(elapsed)

if curStep >= 0 then

songPos = getSongPosition()

local currentBeat = (songPos/1000) * (bpm/100)

doTweenX(dadTweenX, 'dad', 100-700*math.sin((currentBeat * 0.25) * math.pi),0.001)
end

end