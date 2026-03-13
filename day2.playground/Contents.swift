import Cocoa
// https://www.hackingwithswift.com/100/swiftui/2

// # Booleans, String interpolation, Checkpoint 1

// ## Bool
let gameOver = false
let isMultiple: Bool = 120.isMultiple(of: 3)

// // operator
var isAuthenticated = false
isAuthenticated = !isAuthenticated

// // functionality
var canToggle = true
canToggle.toggle() // WOW toggle value

// ## joining strings together
let greeting = "Hello "
let name = "Mars"

// under the hood, this creates a bunch of new strings together then creates one big string - not memory efficient
let introduction = greeting + name + " !" // does not add separators for you
let quote = "\"Hello\""
let age = 21
// string interpolation
let message = "Hello, my name is \(name) and I'm \(age)!" // moer efficient
// typecasting
let ageString = String(age)
// calculations
print("five multiplied by five is \(5 * 5)")


// CHECKPOINT!
let temperatureC = 19
let temperatureF = temperatureC * 9 / 5 + 32
print("Temperature | Celsius: \(temperatureC) | Fahrenheit: \(temperatureF)")
