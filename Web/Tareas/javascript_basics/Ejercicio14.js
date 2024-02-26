/*
Ricardo Calvo - A01028889
26/02/2024

Write a function that takes a number and returns true if it is a power of two, false otherwise.
*/


let num =  4

function Bin(num){
	onum = num
	if(num <= 0){
		console.log(onum, ' is not a power of two')
		return false
	}
	while(num > 1){
		if(num & 2 !== 0){
			console.log(onum,' is not a power of two')
			return false
		}
		num /= 2
	}
	console.log(onum, ' is power of two')
	return true
}


Bin(4)
Bin(6)
