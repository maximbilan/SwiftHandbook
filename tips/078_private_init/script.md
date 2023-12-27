## Private init

In Swift, using a private initializer for a class is like having an exclusive membership policy. It prevents external instantiation, ensuring only the class itself can create an instance. This is particularly useful for singletons, where you want a single instance accessible globally. It's a way to elegantly control instance creation, akin to an exclusive club with a strict guest list.

```swift
class SingletonClub {
    static let shared = SingletonClub()
    
    private init() {
        // Secret initialization code
        print("Welcome to the exclusive Singleton Club!")
    }
}

// Let's try to join the club
let clubMember = SingletonClub.shared

// Uncommenting the line below will cause an error
// let anotherMember = SingletonClub()
// Error: 'SingletonClub' initializer is inaccessible due
// to 'private' protection level
```

## Reference

[YouTube 👀](https://youtube.com/shorts/TzMdEsUsnUI?feature=share)