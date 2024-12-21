func safeReduce<T, U>(array: [T], initialValue: U, combine: (U, T) -> U) -> U {
    guard !array.isEmpty else { return initialValue }
    return array.reduce(initialValue, combine)
}

let array = [1, 2, 3]
let sum = safeReduce(array: array, initialValue: 0, combine: +)
print(sum) // Output: 6

let emptyArray: [Int] = []
let emptySum = safeReduce(array: emptyArray, initialValue: 0, combine: +)
print(emptySum) // Output: 0

let stringArray = ["hello", "world"]
let stringSum = safeReduce(array: stringArray, initialValue: "", combine: { $0 + $1 })
print(stringSum) // Output: helloworld

let anotherEmptyArray: [String] = []
let anotherEmptySum = safeReduce(array: anotherEmptyArray, initialValue: "", combine: { $0 + $1 })
print(anotherEmptySum) // Output: 