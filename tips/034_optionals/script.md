## Optionals

In Swift, Optionals represent variables that can hold either a value or no value (nil). To safely handle these, use optional binding with if let or guard let. This method checks for a value, and if one exists, it unwraps the Optional for safe use, avoiding potential runtime crashes from unwrapping nil values. This practice ensures robust and error-free code when dealing with Optionals.

```swift
let optionalValue: Int? = 5

if let safeValue = optionalValue {
    // Hooray! We have a value.
    // Do something with safeValue
} else {
    // Oops, no value.
    // Handle the nil case
}

let crashyValue: Int? = nil
print(crashyValue!)
```

## Reference

[YouTube 👀](https://youtube.com/shorts/qpESF4CP75w?feature=share)