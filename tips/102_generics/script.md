## How to use Generics in Swift

The example demonstrates the use of generics in Swift by creating a versatile swapValues function. This generic function can swap the values of any two variables as long as they are of the same type. By using a generic placeholder T, the function is made flexible to work with any data type, such as Int, String, etc. This showcases the power of generics to write reusable, type-safe code that can operate on different types without the need for multiple type-specific implementations. The example highlights the balance between flexibility and simplicity in using generics effectively.

```swift
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var firstInt = 100
var secondInt = 200

// Swapping two integers
swapValues(&firstInt, &secondInt)
print("First Int: \(firstInt)")
print("Second Int: \(secondInt)")

var firstString = "Hello"
var secondString = "World"

// Swapping two strings
swapValues(&firstString, &secondString)
print("First String: \(firstString)")
print("Second String: \(secondString)")
```

## Reference

[YouTube 👀](https://youtube.com/shorts/zLN8ERm0WnU?feature=share)
