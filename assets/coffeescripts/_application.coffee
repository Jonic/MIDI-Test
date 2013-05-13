'use strict'

currentControl = document.querySelector('.current-control')
currentValue   = document.querySelector('.current-value')
controlOffset  = 3

controlCallback = (t, a, controlIndex, value) ->
	currentControl.innerHTML = controlIndex
	currentValue.innerHTML   = value

	controlIndex -= controlOffset

	valueAsPercentage = (value / 128) * 100

	controlOutput = document.querySelector('.fader-value-' + controlIndex)

	if controlOutput
		controlOutput.innerHTML = valueAsPercentage

	return

document.getElementById('Jazz').MidiInOpen(0, controlCallback)

controller = new Option(' ', ' ', true, true)