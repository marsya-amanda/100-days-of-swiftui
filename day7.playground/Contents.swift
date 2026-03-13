import Cocoa

// DAY 7: functions, parameters

func showWelcome() {
    print("Welcome to my app!")
    print("This is a function I'm learning.")
}

showWelcome()

// paramsneed to be typed
func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

// optional to have the param names
printTimesTables(number: 5, end: 12) // params are declared with the colon

// note: any data created inside a function is automatically destroyed when the function is finished

// // Return values
let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}
let result = rollDice()
print(result)

// problem: check if two strings have the exact same letters
func areLettersIdentical(str1: String, str2: String) -> Bool {
    str1.sorted() == str2.sorted() // when a func only has one line of code, we can remove the return keyword entirely!
}

let isIdentical = areLettersIdentical(str1: "mars", str2: "arms")
print(isIdentical)

// problem: pythagoras
func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

print(pythagoras(a: 3, b: 4))

// also can use return to exit early

// // RETURN MULTIPLE VALUES
// could use array, but can't know which value means what
// could use dict, but need to provide default value just in case
// tuples! fixed in size and contain various data types

func getUser() -> (firstName: String, lastName: String) {
    // typles allow Swift to know at compile time whether the values exist
    (firstName: "Taylor", lastName: "Green") // optional to use names
}

let user = getUser()
print("\(user.firstName), \(user.lastName)")

// could also have tuples which have no names - access with index
func getUser2() -> (String, String) {
    ("Taylor", "Green")
}
let user2 = getUser2()
print("\(user2.0) \(user2.1)")

// deconstruct
let (firstName, lastName) = getUser()

// if don't need all values
let (firstName2, _) = getUser()

// use set when order doesn't matter, tuple if mixed data, array if ordered, dict if arbitrary names

// // Customising param labels
// overload! allowed
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

// use _ as an external name so we don't need to use it in call
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
isUppercase("HELLO") // no need to say string: "HELLO"

// using a second name for readability of function
func printSpaces(for number: Int) {
    // external name is 'for', internal name is 'number'
    for i in 1...number {
        print(" ")
    }
}
printSpaces(for: 5) // use external name!
