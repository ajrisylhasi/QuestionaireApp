// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


window.change_question_type = function() {

	if(event.currentTarget.value == "Open Answer" || event.currentTarget.value == "Number") {
		event.currentTarget.parentElement.querySelector('.possibleSolutions').classList.remove('show');
	} else {
		event.currentTarget.parentElement.querySelector('.possibleSolutions').classList.add('show');
	}
}

window.addPossibleSolution = function() {
	const newInput = document.createElement('input');
	newInput.classList.add('possibleSolution');
	event.currentTarget.parentElement.append(document.createElement('br'));
	event.currentTarget.parentElement.append(newInput);
	var solutionInputs= event.currentTarget.parentElement.querySelectorAll('.possibleSolution');
	let value = "";
	for(i = 0; i < solutionInputs.length; i++) {
		if(solutionInputs[i].value != ""){
			value += solutionInputs[i].value+"*,*";
		}
	}
	const hiddenInput = event.currentTarget.parentElement.parentElement.querySelector('input[type=hidden]').value = value;
}

window.confirmSolutions = function() {
	var solutionInputs= event.currentTarget.parentElement.querySelectorAll('.possibleSolution');
	let value = "";
	for(i = 0; i < solutionInputs.length; i++) {
		if(solutionInputs[i].value != ""){
			value += solutionInputs[i].value+"*,*";
		}
	}
	const hiddenInput = event.currentTarget.parentElement.parentElement.querySelector('input[type=hidden]').value = value;
}

window.change_selected_answer = function(sol) {
	const value = event.currentTarget.parentElement.querySelector('input[type=hidden]').value;
	let value_array = [];
	value_array = value.split(", ");
	if(value_array.includes(sol)) {
		for (let i = 0; i < value_array.length; i += 1) {
          if (value_array[i] === sol || value_array[i] === "") {
            value_array.splice(i, 1);
            i -= 1;
          }
        }
	} else {
		value_array.push(sol);
	}
	console.log(value_array);
	event.currentTarget.parentElement.querySelector('input[type=hidden]').value = value_array.join(", ")
}