let array = [1, 2, 3]
let sum = array.reduce(0, +)
print(sum) // Output: 6

let emptyArray: [Int] = []
let emptySum = emptyArray.reduce(0, +)
print(emptySum) // Output: 0

let stringArray = ["hello", "world"]
//let stringSum = stringArray.reduce("", +) // Compile-time error: Could not find an overload for '+' that accepts the supplied arguments

let anotherEmptyArray: [String] = []
//let anotherEmptySum = anotherEmptyArray.reduce("", +) // Compile-time error: Could not find an overload for '+' that accepts the supplied arguments