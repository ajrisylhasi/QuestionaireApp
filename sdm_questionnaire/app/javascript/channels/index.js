// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


window.change_question_type = function() {
	console.log(event.currentTarget.value);
	console.log(document.querySelector('.possibleSolutions>input').value)
}