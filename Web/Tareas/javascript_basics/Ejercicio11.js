/*
Ricardo Calvo - A01028889
26/02/2024

Write a function that takes a list of strings and returns a new list with all the strings in alphabetical order.
*/

let list = ['this', 'is', 'a', 'list', 'of', 'strings']

function OrderAlph(list) {
	console.log('Original list of strings: ', list)
	let order = list.sort()
	console.log('Ordered list of strings: ', order)
	return order
}

OrderAlph(list)
