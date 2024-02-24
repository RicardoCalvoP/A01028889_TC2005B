/*
Ricardo Calvo - A01028889
22/02/2024
Create a function that calculates the greatest common divisor of two numbers.
*/

let num1 = 450
let num2 = 360

function GreatestCommonFactor(num1, num2) {
	const PrimeNumbers = [2, 3, 5, 7, 11, 13]
	let PrimeIndex = 0
	let GCD = 1
	let factroialnum1 = []
	let factorialnum2 = []
	while (num1 != 1 && num2 != 1) {
		if (num1 % PrimeNumbers[PrimeIndex] == 0 || num2 % PrimeNumbers[PrimeIndex] == 0) {
			if (num1 % PrimeNumbers[PrimeIndex] == 0) {
				num1 = num1 / PrimeNumbers[PrimeIndex]
				factroialnum1.push(PrimeNumbers[PrimeIndex])
			}
			if (num2 % PrimeNumbers[PrimeIndex] == 0) {
				num2 = num2 / PrimeNumbers[PrimeIndex]
				factorialnum2.push(PrimeNumbers[PrimeIndex])
			}
		}
		else {
			PrimeIndex = PrimeIndex + 1
		}
	}
	if (factroialnum1.length < factorialnum2.length) {
		for (let i = 0; i < factroialnum1.length; i++) {
			GCD = GCD * factroialnum1[i]
		}
	}
	else {
		for (let i = 0; i < factorialnum2.length; i++) {
			GCD = GCD * factorialnum2[i]
		}
	}
	console.log('GCD: ', GCD)
}


GreatestCommonFactor(num1, num2)
