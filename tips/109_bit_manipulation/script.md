## Bit manipulation

In the realm of Swift, you can use a bit of bitwise wizardry to quickly determine if a number is odd or even. By casting a simple spell with the bitwise AND operator, you compare the least significant bit of a number with 1. If this conjuration results in 1, the number is odd; if it's 0, then the number is even. It's like having a magical lens to peek at the very last bit of a number to reveal its odd or even nature. This trick is not only efficient but also adds a touch of enchantment to your coding cauldron!

```swift




func isOdd(_ number: Int) -> Bool {
    // The magical spell: using bitwise AND with 1
    return number & 1 == 1
}

// Let's test our magic!
let number1 = 4
print("Is \(number1) odd? \(isOdd(number1))")

let number2 = 7
print("Is \(number2) odd? \(isOdd(number2))")
```

## Reference

[YouTube 👀]()