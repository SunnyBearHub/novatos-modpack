function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/1000) * (bpm/100)
end

function opponentNoteHit()
    triggerEvent('Screen Shake', '0.1, 0.01', '0.1, 0.01');	
    end
    
function onUpdate(elapsed)
    songPos = getSongPosition()
    local currentBeat = (songPos/5000)*(curBpm/60)
    setPropertyFromClass('openfl.Lib','application.window.x', 80*math.sin((currentBeat+32*0.8)*math.pi), 12)
    setPropertyFromClass('openfl.Lib','application.window.y', 160*math.sin((currentBeat+64*0.16)*math.pi), 24)
end