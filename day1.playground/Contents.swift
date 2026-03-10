import Cocoa // lots of functionality

var greeting = "Hello, playground" // create a new variable
greeting = "Hi, playground" // can change

let character = "Mia" // constant, can't change

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

let importantWealth = "love"

// Creating strings!
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
