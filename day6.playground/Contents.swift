import Cocoa

// DAY 6 - Loops, summary, checkpoint 3
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

// // FOR
for os in platforms {
    print("Swift works great on \(os).")
}

// a...b is a range from a to b (inclusive)
for i in 1...12 {
    print("5 * \(i) is \(5 * i)")
}

// a..<b is a range from a to b (b exclusive)
for i in 1..<5 {
    print("counting 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

// no need loop variable
for _ in 1...5 {
    lyric += " hate"
}

// // WHILE
var countdown = 10
while countdown > 0 {
    countdown -= 1
}

// random
let id = Int.random(in: 1...1000) // takes in array
let amount = Double.random(in: 0...1)

// roll 20-sided dice until get 2
var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// // BREAK + CONTINUE
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if !filename.hasSuffix(".jpg") {
        continue
    }
    
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

// // CHECKPOINT 3 - Fizz Buzz
for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}
