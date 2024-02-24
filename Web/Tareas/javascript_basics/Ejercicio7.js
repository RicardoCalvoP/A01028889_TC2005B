/*
Ricardo Calvo - A01028889
22/02/2024

Write a function that takes a number, and returns a list with all its factors. For example: factorize(12) -> [1, 2, 3, 4, 6, 12].
*/

let number = 12

function Factorials(number) {
	let factorials = []
	for (let i = 1; i <= number; i++) {
		if (number % i == 0) {
			factorials.push(i)
		}
	}
	return factorials
}

console.log('factorials of ', number, ' is ', Factorials(number))
