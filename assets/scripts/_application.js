// Generated by CoffeeScript 1.6.1
'use strict';
var Jazz, controller, faderCallback, faderOffset;

Jazz = document.getElementById('Jazz');

faderOffset = 3;

faderCallback = function(t, a, fader, value) {
  var faderOutput, valueAsPercentage;
  fader -= faderOffset;
  if (fader < 9) {
    valueAsPercentage = Math.round((value / 128) * 100);
    faderOutput = document.querySelector('.fader-value-' + fader);
    faderOutput.innerHTML = valueAsPercentage;
    console.log('Fader:', fader, 'valueAsPercentage:', valueAsPercentage);
  }
};

Jazz.MidiInOpen(0, faderCallback);

controller = new Option(' ', ' ', true, true);