## Singleton in Swift

In Swift, the Singleton pattern ensures a class has only one instance with a global access point. It's useful for managing shared resources or coordinating actions. However, overuse can lead to issues like hidden dependencies and testing difficulties. A Singleton in Swift is created using a static property and a private initializer to ensure only one instance exists. For example, a Universe class with a shared static property and a private initializer demonstrates a Singleton, accessed via Universe.shared. Remember to use Singletons sparingly for maintainable and testable code.

```swift




class Universe {
    static let shared = Universe()

    private init() {
        // Private initialization to ensure
        // just one instance is created.
        print("Creating the universe...")
    }

    func bigBang() {
        print("Boom! Universe created.")
    }
}

// Access the singleton
Universe.shared.bigBang()
```

## Reference

[YouTube 👀](https://youtube.com/shorts/cZ7x5JCXUSM?feature=share)
