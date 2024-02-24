/*
Ricardo Calvo - A01028889
22/02/2024

Write a function that removes duplicate elements from an array and returns a list of the remaining elements. For example: removeDuplicates([1, 0, 1, 1, 0, 0]) -> [1, 0]
*/

let numbers = [1, 1, 2, 2, 3, 3, 4, 2, 4, 5, 6, 4, 3, 4, 4, 2, 3, 1]

function RemoveRepeated(numbers) {
	let seen = {}
	let result = []
	let length = numbers.length
	for (let i = 0; i < length; i++) {
		if (!seen[numbers[i]]) {
			result.push(numbers[i])
			seen[numbers[i]] = true
		}
	}
	return result
}

console.log('Original array: ', numbers)
console.log('Duplicates removed: ', RemoveRepeated(numbers))
