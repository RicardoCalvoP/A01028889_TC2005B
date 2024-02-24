/*
Ricardo Calvo - A01028889
22/02/2024

Write a function that removes duplicate elements from an array and returns a list of the remaining elements. For example: removeDuplicates([1, 0, 1, 1, 0, 0]) -> [1, 0]
*/

let numbers = [1, 1, 2, 2, 3, 3]
let length = numbers.length

for (let i = 0; i < length; i++) {
	for (let j = 0; j < length; j++) {
		if (i == j)
			numbers.pop(i)
	}
}

console.log(numbers)

/*
function DeleteRepeat(numbers, numbers2, length) {

	for (let i = 0; i < length; i++) {
		for (let j = numbers[i]; j < length; j++) {
			if (j != numbers2[j]) {
				numbers2.push(j)
				console.log(numbers2)
			}
		}
	}
}

console.log(DeleteRepeat(numbers, numbers2, length))

/*
	for (let k = 0; k < Position.length; k++) {
		numbers.splice(Position[k], 1)
	}
	return numbers
}

console.log('Original list: ', numbers)
console.log(DeleteRepeat('Non repited numbers: ', numbers))
*/
