## Tuples

Tuples in Swift are a versatile and efficient way to group multiple values, possibly of different types, into a single compound value. They are particularly useful for functions that need to return more than one piece of information. Importantly, tuples are value types in Swift. This means when a tuple is assigned to a new variable or passed to a function, it is copied, not referenced. This behavior ensures that modifications to a copied tuple don't affect the original, keeping your data management clean and predictable. Tuples offer a compact, yet powerful way to handle multi-part data in Swift, combining simplicity with the robustness of value type semantics.

```swift
func fetchData() -> (success: Bool, message: String) {
    // Imagine some fetching logic here
    let success = true
    let message = "Data fetched successfully!"
    return (success, message)
}

let result = fetchData()
print("Success: \(result.success), Message: \(result.message)")

var originalTuple = (x: 1, y: 2)
var copiedTuple = originalTuple
copiedTuple.x = 3 // This change won't affect originalTuple

print(originalTuple) // Output: (x: 1, y: 2)
print(copiedTuple)   // Output: (x: 3, y: 2)
```

## Reference

[YouTube 👀](https://youtube.com/shorts/HbsIa44ZMsM?feature=share)