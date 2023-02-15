import UIKit

let names = ["Anna", "Alex", "Brian", "Jack"]

// for-in loops
for name in names {
    print("Hello, \(name)!")
}

// for-in with dictionaries -> (key, value)
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

// for-in with ranges.
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let hours = 12
let hourInterval = 3
// for-in with stride function.
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    // Renders the tick mark every 3 hours (3, 6, 9, 12).
}


// functions are types => function types! 🤯🤯🤯

let myAge: Int
let myPerson: String

var greet: (String, Int) -> String // This is the notation for function types that take an input of (String, Int) and return a String.

func multiple(value: Int) { 
    print(value)
}

multiple(value: 123)

func greetingFunction(person: String, age: Int) -> String {
    let greeting = "Hello, \(person) from \(#function). You are \(age) years old";
    return greeting
}

// 😱🫣 We can pass functions (without the closed parenthesis) to variables and other parameters for several reasons.
greet = greetingFunction 

// greet() here does the exact same thing that greetingFunction() does, we're just using the previous assignment to call it with a different name.
let functionGreeting = greet("George P. Burdell", 42)
print(functionGreeting)

// Closures are essentially anonymous functions (no name functions). Their use cases will be clearer later on. Just know how they work for now.
let greetingClosure: (String, Int) -> String 

// Wondering where the "person, age in" syntax came from? This is just how we retrieve the (String, Int) input passed into the function and use it. Also, calling the input variable "person" from "person, age in" doesn't matter, since it's an anonymous function (a closure), it would act the same if I changed it to "name". Naming the input is simply an act of convenience.
greetingClosure = { person, age in // Would act the same if changed to "name, age in" OR name, "years in"
    let greeting = "Hello, \(person) from \(#function). You are \(age) years old";
    return greeting
}

let closureGreeting = greetingClosure("George P. Burdell", 42)
print(closureGreeting)

// We can pass functions to other functions!!! A lot of array and dictionary operations require passing in functions, so knowing this is useful.

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

