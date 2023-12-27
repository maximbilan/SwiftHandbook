## Random

In Swift, you can easily generate random values using built-in methods. For integers, use Int.random to get a random number within a specified range. For floating-point numbers, Double.random does the trick, giving you a random Double within your chosen range. And for an element of surprise from an array, randomElement randomly selects an item. These methods make adding randomness to your Swift projects both simple and fun!

```swift
let luckyNumber = Int.random(in: 1...10)
print("The lucky number is \(luckyNumber)")

let randomFraction = Double.random(in: 0...1)
print("A random fraction for you: \(randomFraction)")

let snacks = ["Chips", "Salsa", "Chocolate", "Pizza"]
if let randomSnack = snacks.randomElement() {
    print("Random snack of the day: \(randomSnack)")
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/5GRQwIsdMt0?feature=share)