import Cocoa // lots of functionality
// https://www.hackingwithswift.com/100/swiftui/1

var greeting = "Hello, playground" // create a new variable
greeting = "Hi, playground" // can change

let character = "Mia" // constant, can't change

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

let importantWealth = "love"

// // Creating strings!
let quote = "\"hello\"" // backslashes before quotes
print(quote)

let multilineQuote = """
A day in
the life of an
Apple engineer
"""

print(quote.count) // count is a property, just read
print(quote.uppercased()) // this is an operation
print(multilineQuote.hasPrefix("A day"))
print(multilineQuote.hasSuffix("engineer"))
print(multilineQuote.hasSuffix("Engineer")) // false! Case-sensitive


// // Whole numbers
// called Int
let score = 10
let oneMillion = 1000000
let oneMillionClear = 1_000_000
print(oneMillionClear) // 1000000

var fuckassOneMillionClear = 1_____000_000

// arithmetic
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

var counter = 10
counter += 5
counter *= 2
print(counter)

// integer functionality
let number = 120
print(number.isMultiple(of: 3)) // operator!
print(120.isMultiple(of: 3)) // use number directly

// // Decimals
// Double data type: allocate twice amount of storage to store big numbers
// Typesafe: cannot put Double and Int together
let a = 1
let b = 2.0
let c = a + Int(b) // make it type sage
let d = Double(a) + b

// // Type Safety 2: every var/constant initialised is set to that datatype (swift memory allocation mech)

