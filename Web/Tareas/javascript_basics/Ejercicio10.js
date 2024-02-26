/*
Ricardo Calvo - A01028889
26/02/2024

Write a function that checks whether a text string is a palindrome or not.
*/

let string1 = 'Radar'
let string2 = 'Data'

function Palindrome(string) {
	string = string.toLowerCase()
	length = string.length - 1
	for (let i = 0; i < length; i++) {

		if (string.charAt(i) !== string.charAt(length - i)) {
			console.log(string, ' is not a palindrome')
			return false
		}
	}
	console.log(string, 'is a palindrome')
	return true
}


Palindrome(string1)
Palindrome(string2)
