## 011_deinit

In Swift, the deinit keyword is used to define a deinitializer, which is a special block of code that gets called when an instance of a class is about to be deallocated. Remember, unlike other languages that require explicit cleanup code, Swift deinit is only necessary if you need to free up resources or perform some actions, like saving state or logging, before the instance is deallocated. In most cases, Swift automatic reference counting handles memory management for you, so you can focus on the party rather than the cleanup! Happy coding!

```swift
class PartyAnimal {
    var name: String

    init(name: String) {
        self.name = name
        print("\(name) has entered the building!")
    }

    deinit {
        print("\(name) has left the building!")
    }
}

```