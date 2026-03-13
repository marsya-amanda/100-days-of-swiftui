import Cocoa

// DAY 5: if, switch, ternary operators

// // CONDITIONALS
let something = true
let mark = 50

if something {
    print("yay!")
}

if mark >= 65 {
    print("you got a credit")
}

// comparing alphabetical order
var ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("\(ourName) comes before \(friendName)")
}

if ourName == "Mars" {
    print("hey, that's me!")
}

// note that integer comparison is cheaper than string comp

// string, array, dict, and set field! isEmpty
if ourName.isEmpty == true {
    ourName = "Anonymous"
}

// // MULTIPLE CONDITIONS - &&, ||
let age = 16

if age >= 18 {
    print("can vote")
} else {
    print("cannot vote")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    // code above: Swift knows it is TransportOption enum type
    print("Let's fly!")
} else if transport == .bicycle {
    print("pedal")
} else  {
    print("will be alright")
}

// // SWITCH STATEMENTS
enum Weather {
    case sun, rain, wind, snow
}

let forecast = Weather.wind

// Important: All switch statements MUST be exhaustive - cover all cases
// note: integers also enum
switch forecast {
case .sun:
    print("nice day")
case .rain:
    print("brolly")
case .wind:
    print("need warmth")
case .snow:
    print("cancelled")
}

switch forecast {
case .sun:
    print("nice day")
default:
    print("it's not summer anymore")
}

let day = 5
print("My true love game to me...")

// fallthrough makes all cases run in that order
switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
//    fallthrough // if not contiguous, stops executing all other
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}


// // TERNARY OPERATORS
let canVote = age >= 18 ? "Yes" : "No"

let isRaining = forecast == .rain ? "it is raining" : "it is not raining"

