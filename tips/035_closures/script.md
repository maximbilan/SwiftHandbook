## 035_closures

Closures in Swift can capture and hold onto variables and constants from their surrounding context. This means a closure can use and modify values defined outside of it, keeping track of changes to these values over time. It is like the closure has a photographic memory, remembering and interacting with the state of variables and constants from its defining environment, even after those have gone out of scope elsewhere in your code. This feature is particularly useful for creating customized functions on the fly or maintaining state within a function.

```swift




func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0

    let incrementer: () -> Int = {
        runningTotal += amount
        return runningTotal
    }

    return incrementer
}

let incrementByTwo = makeIncrementer(forIncrement: 2)
print(incrementByTwo()) // Prints 2
print(incrementByTwo()) // Prints 4
print(incrementByTwo()) // Prints 6

```