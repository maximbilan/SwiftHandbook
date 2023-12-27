## Automatic Reference Counting

Let's explore Swift's Automatic Reference Counting, or ARC. Imagine a Person class in Swift, assigned to three variables, like giving out three keys. Each assignment increases ARC's count. When these variables are set to nil, ARC counts down. Once all keys are returned and no references remain, ARC frees up the memory. This simple yet powerful mechanism of Swift's ARC efficiently manages memory, preventing leaks and ensuring smooth performance.

```swift


class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

// Allocate memory and initialize
reference1 = Person(name: "John Doe")

// Additional references to the same Person instance
reference2 = reference1
reference3 = reference1

// Break two references, memory is not freed yet
reference1 = nil
reference2 = nil
```

## Reference

[YouTube 👀]\(\)