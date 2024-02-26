/*
Ricardo Calvo - A01028889
22/02/2024

Write a function using the bubble-sort algorithm to sort a list of numbers
*/


let numbers = [17, 19, 5, 11, 2, 13, 7, 3]

/*
Goal:
let numbers = [2,3,5,7,11,13,17,19]
*/


function BubbleSort(numbers) {
	let length = numbers.length
	for (let i = 0; i < length; i++) {
		for (let j = 0; j < length; j++) {
			if (numbers[j] > numbers[j + 1]) {
				let temporal = numbers[j]
				numbers[j] = numbers[j + 1]
				numbers[j + 1] = temporal
			}
		}
	}
	return numbers
}

console.log('Original array: ', numbers)
console.log('Bubble Sort', BubbleSort(numbers))
