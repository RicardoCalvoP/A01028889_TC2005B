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
	//Declare the value of length of the array
	let length = numbers.length

	/*
	the outer loop will be used to control the times the list is going to be
	sorted, this way we can confirm the array is properly sorted
	*/
	for (let i = 0; i < length; i++) {

		/*
		Inner loop is in charge of "sorting" the array in order by comparing its values
		and depending on the bigger value between them.
		*/
		for (let j = 0; j < length; j++) {

			/*
			This conditional is used to compare if the next position on the index is
			bigger than the index
			*/
			if (numbers[j] > numbers[j + 1]) {
				/*
				In case that the next value of the index is bigger, the value will be saved on
				a variable call temporal this way we can change the positions like this:
				index value -> temporal
				next value -> index place
				next place -> index value
				*/
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
