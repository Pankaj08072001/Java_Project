function Display(value) {
	document.querySelector('#btn').value += value;
}

function clearDisplay() {
	document.querySelector('#btn').value = '';
}

function calculateResult() {
	const display = document.querySelector('#btn');
	try {
		display.value = eval(display.value);
	} catch {
		display.value = 'Error';
	}
}

