import Cocoa

// DAY 3: Complex data types, part 1

// // arrays
var gnomes: [String] = ["mars", "miu", "emerson", "jude", "sarah", "declan", "lilly"]
let numbers = [1, 2, 3, 4, 5]
print(gnomes[4])

gnomes.append("eva")

// type safety note: array CANNOt contain mixed types
var scores = Array<Int>()
var names = Array<String>()
var alsoNames = [String]()

// properties + operations: append, count, remove, removeAll, contains, sorted, reversed
print(gnomes.count)
gnomes.append("billy")
print(gnomes)
gnomes.remove(at: (gnomes.count-1)) // only index
print(gnomes)
gnomes.removeAll()
print(gnomes)

let containsMiu = gnomes.contains("Miu")
let testArr = ["one", "two", "three", "four"]

print(testArr.sorted())
print(numbers.reversed()) // doesn't actually create a new array, but remembers that its a *reversed* array type

// note: can also use for strings
let name = "mars"
print(name.sorted())

// // DICTIONARIES
let gnomeBoss = [
    "name": "emerson",
    "job": "care support worker",
    "location": "nashville"
] // key: value

print(gnomeBoss["name", default: "Unknown"]) // add a default value in case the key doesn't exist, else it prints Optional(string)
// can be default: "Some String"

var heights = [String: Int]() // initialise dict
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206
print(heights)

print(heights.count)
print(heights.removeAll())

// // SETS - fast data lookup

// create array first then set -> set removes duplicate values
var people = Set(["Mars", "Emerson"])
print(people) // might be ordered differently than initialisation

people.insert("Declan")
people.insert("Lilly")
people.insert("Miu")
people.insert("Emerson")
print(people)

// note: sets are highly highly optimised - lookup is very fast compared to arrays
print(people.contains("Lilly"))

// // ENUM

// define in uppercase
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var today = Weekday.friday
today = Weekday.wednesday
print(today)

enum State {
    case confused, happy // easier!
}

var curr = State.happy
curr = .confused
print(curr)
