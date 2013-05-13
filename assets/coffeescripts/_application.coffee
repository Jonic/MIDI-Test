'use strict'

Jazz = document.getElementById('Jazz')
faderOffset = 3

faderCallback = (t, a, fader, value) ->
	fader -= faderOffset

	if fader < 9
		valueAsPercentage = Math.round((value / 128) * 100)
		faderOutput = document.querySelector('.fader-value-' + fader)

		faderOutput.innerHTML = valueAsPercentage

		console.log('Fader:', fader, 'valueAsPercentage:', valueAsPercentage)

	return

Jazz.MidiInOpen(0, faderCallback)

controller = new Option(' ', ' ', true, true)