import Cocoa

// DAY 10: STRUCTS
// structs are ways to define new data structures

// creating structs
struct Album { // in title case
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let doves = Album(title: "Doves", artist: "Hindia", year: 2025)

print(doves.title)
print(doves.artist)

doves.printSummary() // call module within


// structs with changing data
struct Employee {
    // properties
    let name: String
    var vacationRemaining: Int
    
    // methods
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("not enough days")
        }
    }
}

// initialise with variable structs, but not constant
// let archer = Employee(name: "Sterling Archer", vacationRemaining: 14) --> can't use constant
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

// COMPUTING properties dynamically - to know how changes were made
struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int { // dynamic property!!
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer2 = Employee2(name: "Sterling Archer")
archer2.vacationTaken += 4
archer2.vacationRemaining = 5 // new value
print(archer2.vacationAllocated)


// PROPERTY OBSERVERS: code that run when properties change
// // forms: didSet, runs when property just changed | and willSet, runsbefore property change
// // useful when: need to attach some action after / before property changes


struct Game {
    var score = 0 {
        willSet {
            print("Current value is: \(score)")
            print("New value is: \(newValue)")
        }
        didSet {
            print("Score is now \(score) from \(oldValue)") // oldValue automatically given
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

// CUSTOM INITIALISERS
// // can have custom inits, but NEED TO DEFINE ALL PROPERTIES WITHIN custom init

struct Player {
    let name: String
    let number: Int
    
    init(name: String, number: Int) { // no func keyword, no explicit return type
        self.name = name // uses self
        self.number = number
    }
}

// Visibility using access control
// private (struct-scope), fileprivate (file-scope), public (project-scope)
// default is public

struct BankAccount {
    private var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

// // STATIC properties and methods
// use: add property or method to struct itself rather than to instance of struct
// ex: create example data, storing fixed data that needs to be accessed in various places

struct School {
    nonisolated(unsafe) static var studentCount = 0 // not concurrency-safe but not illegal per-se
    
    static func add(student: String) {
        print("\(student) joined the school")
        studentCount += 1
    }
    
    init(newValue: Int) {
        Self.studentCount = newValue
    }
}
School(newValue: 5)
print(School.self)
School.add(student: "Minion") // not an instance, meaning no unique instance of struct
print(School.studentCount) // to access static code from non-static

print(School.self) // print current value of struct, .Self refers to current type


// static use 1: organise common data in apps
struct AppData {
    static let version = "1"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hello.com"
}

// static use 2: create examples of structs, ie. dummy data

struct Person {
    let username: String
    let password: String

    static let example = Person(username: "cfederighi", password: "hairforceone")
}

// CHECKPOINT 6

struct Car {
    let model: String
    let seatNum: Int
    private var currGear: Int {
        willSet {
            print("Current gear: \(currGear)")
        }
        didSet {
            print("New gear: \(currGear)")
        }
    }
    
    init(model: String, seatNum: Int) {
        // if use private, better to use own init
        self.model = model
        self.seatNum = seatNum
        self.currGear = 0
    }
    
    mutating func changeGear(toGear: Int) {
        if (toGear < 0 || toGear > 10) {
            print("Invalid gear \(toGear)")
        }
        else {
            currGear = toGear
        }
    }
}

var car = Car(model: "Subaru", seatNum: 8)
car.changeGear(toGear: 4)
