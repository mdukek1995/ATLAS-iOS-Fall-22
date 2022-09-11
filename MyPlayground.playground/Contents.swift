import UIKit

let greeting = "Hello " //constant

var name = "Gary" //variable

print(greeting)
print(name)

//print(greeting\(name)) - called error

let personalizedGreeting = greeting + name ; print(personalizedGreeting)

var coordinates = (x:0, y:20) // tuple

coordinates.0 //calls first position- always starts with 0
coordinates.1 //calls second position

enum CardinalDirection: String { //organization feature
    case north, east, south, west
    
    var axis: String {
        switch self {
        case .north, .south:
            return "vertical"
        case .east, .west:
            return "horizontal"
        }
    }
}

var direction = CardinalDirection.north
direction.axis

struct Dog { //structure
    var name: String
    var breed: String
}

let mine = Dog(name: "Rosie", breed: "maltipoo") //auto initializes for prompting

mine

//Dog.mine - error, trying to call values placed in "mine"

print(mine)

mine.name
mine.breed

print("My dog's name is \(mine.name), she's a \(mine.breed)")

mine.name + " is a " + mine.breed

var dogs = (("Rosie" , "maltipoo"), ("Nala" , "catahoula"), ("Astro", "aussie")) //tuple

let myDogs = Dog(name: dogs.0.0, breed: dogs.0.1)

var list: [Int] = [0,1,2,3,4] //array with int type... can use .append feature to add to list. if type is declared you can't add something like a string


//set has only unique values- could be used for something like passwords?
//dictionaries can assign values to reference #s that can be called later on

func nameTheDogs() {}

nameTheDogs() //will return nothing

func nameTheDogs(nameThem: String ) -> String {
    return nameThem
}

nameTheDogs(nameThem: "Rosie")

func dogTypes(nameIt: String, breeds: String) -> String {
    print("My dog's name is \(nameIt), they're a(n) \(breeds)")
    return nameIt + " " + breeds
}

dogTypes(nameIt: "Rosie", breeds: "Maltipoo")

dogTypes(nameIt: "Nala", breeds: "Catahoula")

dogTypes(nameIt: "Astro", breeds: "Aussi")

// "!" after var is a force unwrap operator - don't do this because it can crash app .. != is not equal to
