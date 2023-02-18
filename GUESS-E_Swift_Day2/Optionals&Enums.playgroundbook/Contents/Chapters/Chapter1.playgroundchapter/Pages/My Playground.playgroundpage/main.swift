
/*
 OPTIONALS: Every single Type on Swift has an "optional" variation. This is usually used as safeguard for in case the variable gets passed nil (remember what nil is?). This Swift feature guarantees that we always end up with some value instead of an Error. However, nil may cause an error in runtime if handled innappropriately! We'll see how. Let's have a look at what we mean:
 */

let optionalString: String? // The optional String type can be denoted by a '?' to the right of the type we want.

optionalString = nil

// Operations on Optional Types -> if we want to call a method/function that is associated with the optional variable, we have to call it with an '?' beside it.

print(optionalString?.count)


func returnString() -> String {
    return "I'm " + optionalString // Notice the error marker? This is invalid
}

// We can solve this in two ways:

// 1. Via OPTIONAL UNWRAPPING

func returnStringUnwrapped() -> String {
    return "I'm " + optionalString! // The '!' unwraps our optional variable, under the impression that it doesn't contain nil, if optionalString = nil, then the compiler will output an error.
}

// 2. Via COALESCENT

func returnStringCoalescent() -> String {
    return "I'm " + (optionalString ?? "John Smith") // The ?? is called a 'coalescent', it does the following: returns the value to the right hand side of the variable IF the variable contains nil. Almost like a safety value.
}

print(returnStringUnwrapped())

// A String? X CAN'T be assigned to a String variable Y unless we unwrap X in the following manner: X!

var int: Int? = Optional(2)
var int1: Optional<Int> 

if let someInt = int { 
    // someInt: Int
}

var anotherInt: Int = int! // We unwrap the passed in optional variable.




