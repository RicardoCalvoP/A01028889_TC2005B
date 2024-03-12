"use strict"

import express from "express"

const app = express()
const port = 5000

app.use(express.json())

let cards = []

app.get('/api/card', (req, resp) => {
    if (cards.length < 1) {
        resp.status(404).send("No cards saved")
    }
    else {
        resp.status(200).send(cards)
    }
})

app.get('/api/card/:id', (req, resp) => {
    const cardId = req.params.id
    let cardFound = false
    if (cards.length < 1) {
        resp.status(404).send("No cards saved")
    }
    else {
        for (let i = 0; i < cards.length; i++) {
            if (cardId == cards[i].id) {
                let cardName = cards[i].name
                let cardDesc = cards[i].description
                let cardHp = cards[i].hp
                let cardAp = cards[i].ap
                let cardCost = cards[i].cost
                let cardType = cards[i].type
                let cardElement = cards[i].element
                let cardStrength = cards[i].strength
                let cardWeakness = cards[i].weakness

                resp.status(200).send(`card with ID ${cardId}:
                Name: ${cardName}
                Description: ${cardDesc}
                Hp: ${cardHp}
                Ap: ${cardAp}
                Cost: ${cardCost}
                Type: ${cardType}
                Element ${cardElement}
                Strength: ${cardStrength}
                Weakness: ${cardWeakness}`)

                cardFound = true
            }
        }
        if (!cardFound) {
            resp.status(404).send(`No card with Id: ${cardId} found`)
        }
    }
})

app.post('/api/card', (req, resp) => {
    let cardExist = false
    const cardId = req.body.id

    for (let i = 0; i < cards.length; i++) {
        if (cardId == cards[i].id) {
            resp.status(404).send(`Card with Id: ${cardId} already exists`)
            cardExist = true
        }
    }

    console.log(cardId)
    if (!cardExist) {
        cards.push(req.body)
        console.log(cards)
        resp.status(200).send("card sent correctly")
    }
})

// post json examples at the bottom

app.delete('/api/card/:id', (req, resp) => {
    const cardId = req.params.id
    let cardIndex = 0
    let cardFound = false
    for (let i = 0; i < cards.length; i++) {
        if (cardId == cards[i].id) {
            cardIndex = i
            cardFound = true
            break
        }
    }
    if (cardFound) {
        cards.splice(cardIndex, 1)
        console.log(cards)
        resp.status(200).send(`Card with ID ${cardId} deleted successfully`)
    } else {
        resp.status(404).send(`Card with ID ${cardId} not found`)
    }
})

app.put('/api/card/:id', (req, resp) => {
    const cardId = req.params.id
    let index = 0
    let cardFound = false
    for (let i = 0; i < cards.length; i++) {
        if (cardId == cards[i].id) {
            index = i
            cardFound = true
            break
        }
    }
    if (cardFound) {
        if (req.body.name) {
            cards[index].name = req.body.name
        }

        if (req.body.description) {
            cards[index].description = req.body.description
        }

        if (req.body.hp) {
            cards[index].hp = req.body.hp
        }

        if (req.body.ap) {
            cards[index].ap = req.body.ap
        }

        if (req.body.cost) {
            cards[index].cost = req.body.cost
        }

        if (req.body.type) {
            cards[index].type = req.body.type
        }

        if (req.body.element) {
            cards[index].element = req.body.element
        }

        if (req.body.strength) {
            cards[index].strength = req.body.strength
        }

        if (req.body.weakness) {
            cards[index].weakness = req.body.weakness
        }
        resp.status(200).send('Se actualizo la carta correctamente')
    }
    else {
        resp.status(404).send(`Card with ID ${cardId} not found`)
    }
})


app.listen(port, () => (
    console.log(`Listening on port ${port}`)
))

/*
JSON POST EXAMPLES

{ "id": 1, "name": "morris", "description": "fast", "hp": 10, "ap": 3, "cost": 5, "type": "troop", "element": "normal", "strength": "none", "weakness": "none"}

{ "id": 2, "name": "Rick", "description": "smart", "hp": 10, "ap": 8, "cost": 6, "type": "troop", "element": "fire", "strength": "plant", "weakness": "watter"}
*/