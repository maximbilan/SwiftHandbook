## Safe Array Extension

In Swift, accessing an array with an index that's out of bounds is a one-way ticket to Crashville. We can define a custom subscript for arrays. This subscript, aptly named safe, checks if the index is within the bounds of the array. If it's safe and sound, it returns the element. If it's out of range, it calmly hands back nil instead of crashing.

```swift
extension Array {
    subscript(safe index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

// Usage
let fruits = ["Apple", "Banana", "Cherry"]
let safeFruit = fruits[safe: 2]  // Cherry
let outOfBoundsFruit = fruits[safe: 10]  // nil, not a crash!
```

## Reference

[YouTube 👀](https://youtube.com/shorts/0AbrqLzUnQo?feature=share)