/*
Ricardo Calvo - A01028889
22/02/2024

Create a function that changes a string to a 'Hacker Speak'.
For example, for the string 'JavaScript es divertido', its hackerspeak is 'J4v45cr1pt 35 d1v3rt1d0'
*/

let string = 'This is a STRing'


let Leek = ['4', 'B', '3', '9', '1', '|', '0', '5', '7', '2']
let Letters = ['a', 'b', 'e', 'g', 'i', 'l', 'o', 's', 't', 'z']

function HackerSpeak(string) {
    let result = ''
    string = string.toLowerCase()
    for (let i = 0; i < string.length; i++) {
        let char = string[i]
        let index = Letters.indexOf(char)
        if (index !== -1) {
            result += Leek[index]
        } else {
            result += char
        }
    }
    return result
}

console.log(HackerSpeak(string))

