import Cocoa

// DAY 8: error handling in functions

// // default values
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
// remove characters but keep memory:
characters.removeAll(keepingCapacity: true)

// // error handling
// define errors!

enum PasswordError: Error { // type in swift
    case short, obvious
}

// func that checks strength of password
// say that it 'throws'
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// using the function -> try-catch!
// use 'do' when starting a block of work that might throw errors
// use 'try' for throwing functions
// handle with 'catch'
do {
    let result = try checkPassword("hello")
    print("Password rating: \(result)")
    // result variable only local to this work scope
} catch PasswordError.short {
    print("Too short")
} catch PasswordError.obvious {
    print("Too obvious")
} catch {
    // does not need to be exhaustive
    print("Error")
}

// use 'try!' if absolutely sure an error cannot be thrown

// // CHECKPOINT 4
// write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number
// cant use sqrt, if number < 1 or > 10k, throw out of bounds error, only consider integer square roots, and if no sqrt then throw no root error

enum SqrtError: Error {
    case outOfBounds, noRoot
}

func getSqrt(_ x: Int) throws -> Int {
    if x < 1 || x > 10_000 {
        throw SqrtError.outOfBounds
    }
    var ans = 1
    while ans * ans <= x {
        if ans * ans == x {
            return ans
        }
        ans += 1
    }
    throw SqrtError.noRoot
}

let someX = 1024
do {
    let res = try getSqrt(someX)
    print(res)
} catch SqrtError.outOfBounds {
    print("OOB")
} catch {
    print("no root")
}
