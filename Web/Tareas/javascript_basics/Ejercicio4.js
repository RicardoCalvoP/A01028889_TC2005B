/*
Ricardo Calvo - A01028889
22/02/2024

Write a function that receives a string and returns a new one with the first letter of each word capitalized.
*/

let OriginalString = 'this is a string'

function Capitalized(string)
{
	let word = string.split(' ')
	for(let i = 0; i < word.length; i++)
	{
		word[i] = word[i].charAt(0).toUpperCase() + word[i].slice(1).toLowerCase()
	}
	console.log(word.join(' '))
}

Capitalized(OriginalString)
