import Cocoa
// https://www.hackingwithswift.com/100/swiftui/4

// # DAY 4: Complex data types, part 2

// // Type annotations

// practice: try to use type inference as much as possible, ie. let Swift decide
let favouriteNumber: Int = 2
var albums: [String] = ["CTRL"]
var user: [String: String] = ["username": "marsya-amanda"]
var books: Set<String> = Set(["One Hundred Years of Solitude", "The Handmaid's Tale"])

// initialising without value
let username: String // type annotation REQUIRED
username = "@marsya-amanda"

// // CHECKPOINT 2
let arr = ["mars", "miu", "declan", "emerson", "lilly", "mars", "mars", "declan"]
print(arr.count) // prints number of items in array
print(Set(arr).count) // prints number of unique items in array
