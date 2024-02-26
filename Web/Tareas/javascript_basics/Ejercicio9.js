/*
Ricardo Calvo - A01028889
24/02/2024

Write a function that takes a list of text strings as a parameter, and returns the length of the shortest string.
*/

let list = ['this', 'is', 'as', 'string', 'a']

function ShortestString(list) {
	let length = list[0].length
	for (let i = 0; i < list.length; i++) {
		if (list[i].length < length) {
			length = list[i].length
		}
	}
	console.log('The length of the shortest string is: ', length)
}

ShortestString(list)
