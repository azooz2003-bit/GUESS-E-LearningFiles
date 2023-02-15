import UIKit

let names = ["Anna", "Alex", "Brian", "Jack"]
func compare(lhs: String, rhs: String) -> Bool { 
    return true
}
names.sort(by: compare)

// for-in loops
for name in names {
    print("Hello, \(name)!")
}

// for-in with dictionaries
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

// for-in with ranges
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let hours = 12
let hourInterval = 3
// for-in with stride
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    // render the tick mark every 3 hours (3, 6, 9, 12)
}


// functions are types => function types! 🤯🤯🤯

let myAge: Int
let myPerson: String

var greet: (String, Int) -> String

func multiple(by value: Int) { 
    print(value)
}

multiple(by: 123)

func greetingFunction(person: String, age: Int) -> String {
    let greeting = "Hello, \(person) from \(#function). You are \(age) years old";
    return greeting
}

// 🥶😱🫣
greet = greetingFunction

let functionGreeting = greet("George P. Burdell", 42)
print(functionGreeting)


let greetingClosure: (String, Int) -> String 

greatingClosue = { person, age in
    let greeting = "Hello, \(person) from \(#function). You are \(age) years old";
    return greeting
}

// 🥶😱🫣
greet = greetingClosure

let closureGreeting = greet("George P. Burdell", 42)
print(closureGreeting)

// we can pass functions to other functions!!!

func greetOrShame(greet: (String, Int) -> String) {
    if Bool.random() {
        let greeting = greet("George P. Burdell", 42)
        print(greeting)
    } else {
        let shame = "You are not even real!"
        print(shame)
    }
}

greetOrShame(greet: greetingFunction)
greetOrShame(greet: greetingClosure)

