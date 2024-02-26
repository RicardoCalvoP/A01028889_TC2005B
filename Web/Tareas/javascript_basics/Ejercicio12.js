/*
Ricardo Calvo - A01028889
26/02/2024

Write a function that takes a list of numbers and returns the median and mode.
*/

let numbers = [11, 17, 12, 18, 16, 17, 19, 20, 12, 15, 13, 19]

function Median(numbers) {
	numbers = numbers.sort()
	let length = numbers.length
	let index = length % 2
	let median = 0
	if (length == 1) {
		median = numbers[0]
		console.log('Median: ', median)
		return median
	}
	else if (index == 0) {
		index = length / 2
		median = (numbers[index - 1] + numbers[index]) / 2
		console.log('Median: ', median)
		return median
	}
	else {
		let findex = length / 2 + 0.5
		median = numbers[index]
		console.log('Median: ', median)
		return median
	}
}


function Mode(numbers) {
	numbers = numbers.sort()
	let count = 0
	let MaxCount = 0
	let mode = 0
	let modes = []
	for (let i = 0; i < numbers.length; i++) {
		if (numbers[i] == numbers[i + 1]) {
			count += 1
			if (count > MaxCount) {
				MaxCount = count
				mode = numbers[i]
				if (modes.length > 1) {
					for (let j = 0; j < modes.length; j++) {
						modes.pop()
					}
				}
			}
			else if (count == MaxCount) {
				if (modes.length < 1) {
					modes.push(mode)
					modes.push(numbers[i])
				}
				else {
					modes.push(numbers[i])
				}
			}
		}
		else {
			count = 0
		}
	}
	if (modes.length > 1) {
		console.log('Modes: ')
		for (let k = 0; k < modes.length; k++) {
			console.log(modes[k])
		}
		return modes
	}
	console.log('Mode: ', mode)
	return mode
}


Median(numbers)
Mode(numbers)