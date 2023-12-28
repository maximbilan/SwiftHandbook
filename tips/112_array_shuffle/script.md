## How to shuffle an array in Swift

In Swift, you can easily shuffle the elements of an array using two methods: shuffle and shuffled. The shuffle method rearranges the elements of the array in a random order directly, altering the original array. On the other hand, shuffled creates a new array with the elements shuffled, leaving the original array unchanged. This allows you to either mix up an array in place or get a shuffled version without affecting the original, offering flexibility depending on your needs. It's a handy way to introduce randomness or disorder into your arrays with minimal fuss.

```swift
var numbers = [1, 2, 3, 4, 5]

// Shuffling in place
numbers.shuffle()
print("Shuffled in place: \(numbers)")

// Shuffling without changing the original array
let shuffledNumbers = numbers.shuffled()
print("Original array: \(numbers)")
print("New shuffled array: \(shuffledNumbers)")
```

## Reference

[YouTube 👀]()