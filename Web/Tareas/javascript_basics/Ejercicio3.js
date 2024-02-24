/*
Ricardo Calvo - A01028889
22/02/2024

Write two functions:
The first that inverts an array of numbers and returns a new array with the result.
The second that modifies the same array that is passed as an argument.
Using the built-in 'reverse' is not allowed
*/

let array = [1, 2, 3, 4, 5]

//First Function

function InvertArray(array) {
	console.log('Original Array: ', array)

	//Length of the first array
	let length = array.length - 1
	//Create new Inverted Array
	let EmptyArray = []

	//Function to add values to empty array
	for (let i = length; i >= 0; i--) {
		EmptyArray.push(array[i])
	}

	console.log('new array: ', EmptyArray)
	return EmptyArray
}

//Second Function

function ReverseArray(array) {
	let length = array.length - 1

	for (let i = 0; i < length; i++) {
		let temporal = array[length - i]
		array[length - i] = array[i]
		array[i] = temporal
	}

	return array
}

InvertArray(array)
console.log('Original array: ', array)
console.log('Reversed array: ', ReverseArray(array))
