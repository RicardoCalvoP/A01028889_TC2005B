/*
Ricardo Calvo - A01028889
26/02/2024

Write a function that takes a list of strings and returns the most frequent string.
*/

let list = ['This', 'are', 'some', 'examples', 'of', 'string', 'for', 'the', 'string', 'function', 'and'
	, 'place', 'example']
function PopularString(list) {
	let popular = ''
	let count = 1
	let MaxCount = 0
	list = list.sort()
	for (let i = 0; i < list.length - 1; i++) {
		if (list[i].toLowerCase() == list[i + 1].toLowerCase()) {
			count += 1
			if (count > MaxCount) {
				popular = list[i]
				MaxCount = count
			}
		}
		else {
			count = 1
		}
	}
	console.log('Popular string:', popular, 'repeated ', MaxCount, ' times')
	return popular
}

PopularString(list)