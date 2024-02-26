/*
Ricardo Calvo - A01028889
26/02/2024

Write a function that takes a list of numbers and returns a new list with all the numbers in descending order.
*/

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12]

function Descendent(numbers) {
	console.log('Original: ', numbers)
	let Dec = numbers.sort()
	for (let i = 0; i < numbers.length; i++) {
		for (let j = 0; j < numbers.length; j++) {
			if (numbers[i] > numbers[j]) {
				let temp = numbers[i]
				numbers[i] = numbers[j]
				numbers[j] = temp
			}
		}
	}
	console.log('Descending numbers: ', Dec)
	return Dec
}

Descendent(numbers)
