/*
Ricardo Calvo - A01028889

19/02/2024

Write a fucntion that finds the first character of a string that doesn´t repite. Try your function with: 'abacddbec'Escribe una función que encuentre el primer carácter de un cadena de texto que no se repite. Prueba tu función con: 'abacddbec'
*/

function FindUniqueCharacter() {

	const string = 'abacddbec'

	for (let i = 0; i < string.length; i++) {
		let count = 0
		let Index_Char = string.charAt(i)
		for (let j = 0; j < string.length; j++) {
			if (Index_Char === string.charAt(j)) {
				count++
			}

		}
		if (count === 1) {
			return Index_Char
		}
	}
}

//Print the result
console.log('First unique character: ', FindUniqueCharacter())
