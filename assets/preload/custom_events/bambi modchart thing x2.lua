local work = false

function onEvent(n,v1,v2)
	if n == 'bambi modchart thing x2' then
		work=true
	end
end

function onUpdate(elapsed)
	if work == true then
			for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'visible', true)
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then	
				setPropertyFromGroup('unspawnNotes', i, 'visible', true); --Change texture
				end
			end
				songPos = getSongPosition()
				local currentBeat = (songPos/1000)
	noteTweenY('player1', 4, defaultPlayerStrumY3 + 200*math.sin((currentBeat+8*0.1)*math.pi), 3)
	noteTweenY('player2', 5, defaultPlayerStrumY1 - 100*math.sin((currentBeat+8*0.1)*math.pi), 3)
	noteTweenY('player3', 6, defaultPlayerStrumY0 + 200*math.sin((currentBeat+8*0.1)*math.pi), 3)
	noteTweenY('player4', 7, defaultPlayerStrumY2 - 100*math.sin((currentBeat+8*0.1)*math.pi), 3)

	noteTweenX('playerx1', 4, defaultPlayerStrumX0 + 50*math.sin((currentBeat+8*0.1)*math.pi), 1)
	noteTweenX('playerx2', 5, defaultPlayerStrumX1 - 10*math.sin((currentBeat+8*0.1)*math.pi), 1)
	noteTweenX('playerx3', 6, defaultPlayerStrumX2 + 50*math.sin((currentBeat+8*0.1)*math.pi), 1)
	noteTweenX('playerx4', 7, defaultPlayerStrumX3 - 10*math.sin((currentBeat+8*0.1)*math.pi), 1)

	noteTweenY('opponent0', 0, defaultPlayerStrumY3 - 200*math.sin((currentBeat+8*0.1)*math.pi), 3)
	noteTweenY('opponent1', 1, defaultPlayerStrumY1 + 100*math.sin((currentBeat+8*0.1)*math.pi), 3)
	noteTweenY('opponent2', 2, defaultPlayerStrumY0 - 200*math.sin((currentBeat+8*0.1)*math.pi), 3)
	noteTweenY('opponent3', 3, defaultPlayerStrumY2 + 100*math.sin((currentBeat+8*0.1)*math.pi), 3)

	noteTweenX('opponentx1', 0, defaultOpponentStrumX0 - 50*math.sin((currentBeat+8*0.1)*math.pi), 1)
	noteTweenX('opponentx2', 1, defaultOpponentStrumX1 + 10*math.sin((currentBeat+8*0.1)*math.pi), 1)
	noteTweenX('opponentx3', 2, defaultOpponentStrumX2 - 50*math.sin((currentBeat+8*0.1)*math.pi), 1)
	noteTweenX('opponentx4', 3, defaultOpponentStrumX3 + 10*math.sin((currentBeat+8*0.1)*math.pi), 1)

	end
end

		 		