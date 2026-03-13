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

