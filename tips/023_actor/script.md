## 023_actor

Did you know how to use Actors in Swift programming? Well... Actors are a part of Swift's concurrency model, introduced to handle concurrent operations more safely and efficiently. Think of an actor as a special kind of class that protects its data from being accessed by multiple threads simultaneously. When you use actors in Swift, remember that they enforce a strict access control to their properties and methods. This means that you can't directly access an actor's internal state from outside its context. Instead, you have to asynchronously call the actor to do something with its state. In this example, the Counter actor has a private property value. The methods increment and getValue are used to modify and access this value, respectively. Notably, these methods are marked with await when called, indicating that they are executed asynchronously to respect the actor's isolation. This is essential for avoiding data races in multi-threaded environments. Happy coding!

```swift

actor Counter {
    private var value: Int = 0

    // A method to increment the counter
    func increment() {
        value += 1
    }

    // A method to get the current value of the counter
    func getValue() -> Int {
        return value
    }
}

// Usage
let counter = Counter()

// Incrementing the counter
Task {
    await counter.increment()
}

// Reading the value
Task {
    let currentValue = await counter.getValue()
    print("Counter value: \(currentValue)")
}
```