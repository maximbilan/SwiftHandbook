## foreach

The forEach method in Swift is a stylish and functional way to iterate over collections like arrays or dictionaries. It executes a block of code for each element in the collection. Ideal for cases where you need to perform an action on each element without manipulating the index or needing early exit capabilities (since forEach doesn't support break or continue). It's a clean and elegant alternative to the traditional for-in loop, especially in scenarios that emphasize readability and functional programming patterns.

```swift
var participants = ["Alice": 30,
                    "Bob": 20,
                    "Charlie": 40,
                    "Dana": 35]
let correctAnswers = ["Alice", "Dana", "Bob"]

correctAnswers.forEach { name in
    if let currentScore = participants[name] {
        participants[name] = currentScore + 10
    }
}

print(participants)
// Output: ["Alice": 40, "Bob": 30, "Charlie": 40, "Dana": 45]
```

## Reference

[YouTube 👀](https://youtube.com/shorts/VKXnDbnMqS8?feature=share)