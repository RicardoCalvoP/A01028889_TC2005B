/*
Write a fucntion that finds the first character of a string that doesn´t repite. Try your function with: 'abacddbec'Escribe una función que encuentre el primer carácter de un cadena de texto que no se repite. Prueba tu función con: 'abacddbec'
*/

//Function to find unique character
function FindUniqueCharacter(){

//Declaramos String de entrada
	const string = 'abacddbec'

	for (let i = 0; i < string.length; i++){
		let count = 0 //Will be used to count the number of the same character
		//Declare Index Character
		let Index_Char = string.charAt(i)
		//Function used to compare index character with the rest of the string
		for (let j = 0; j < string.length; j++){
			//Compare index char w current char
			if( Index_Char === string.charAt(j)){
				//if characters are equal, count will increase
				count++
			}

		}
		if (count === 1){
			//If count is 1, means that there the index character doesn´t repeat, therefore we print it.
			return Index_Char
		}
	}
}

console.log('First unique character: ',FindUniqueCharacter())
