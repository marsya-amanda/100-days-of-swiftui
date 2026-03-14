import Cocoa

// DAY 8: Closures
// want one instance of a function - anonymous function
let sayHello = { (name: String) -> String in
    // params in parentheses
    // 'in' marks end of params and return type
        "Hi \(name)!"
}

func greetUser() {
    print("Hello")
}

// type annotation for a function!
var greetCopy: () -> Void = greetUser

// note: when calling a *copy of a function or a closure, we don't use the parameter name
// closures cannot use external parameter labels

// example: custom sorting
func captainSortedFirst(name1: String, name2: String) -> Bool {
    // if true, name1 comes first
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}

let captainSortedLast = { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return false
    } else if name2 == "Suzanne" {
        return true
    }
    return name1 < name2
}

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let captainFirstTeam = team.sorted(by: captainSortedFirst) // sorted() wants a function that accepts two strings and returns boolean
let captainLastTeam = team.sorted(by: captainSortedLast)
print(captainLastTeam)

// could also do:
let captainLastTeam2 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return false
    } else if name2 == "Suzanne" {
        return true
    }
    return name1 < name2
})
print(captainLastTeam2)

// closure w no param
let payment = { () -> Bool in
    print("Paying anonymous person")
    return true
}

// // trailing closures and shorthand syntax

// can omit parameter and return type! - start closure directly (trailing)
let captainfirstTeam2 = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}

// shorthand syntax - no param names - use $0, $1 - use when <3 params and short code
let reverseTeam = team.sorted { $0 > $1 } // only one line so omit return

// // some functions
let tOnly = team.filter { $0.hasPrefix("T")}
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() } // map returns each element, internal name $0
print(uppercaseTeam)

// // functions as parameters -> using is external param name, generator internal
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

// both valid, but can omit
let rolls = makeArray(size: 50) { Int.random(in: 1...20)}
let rolls2 = makeArray(size: 10, using: {Int.random(in: 1...20)})
print(rolls2)

// // example: takes three functions
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

// trailing closures!
doImportantWork {
    print("First work")
} second: {
    print("Second work")
} third: {
    print("Third work")
}
