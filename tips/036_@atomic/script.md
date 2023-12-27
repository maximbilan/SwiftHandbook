## @atomic

This tip introduces the concept of atomic properties in Swift, which are not built-in and require custom implementation for thread safety. To achieve atomicity, you can use a propertyWrapper, creating a reusable, thread-safe way to access and modify properties. This wrapper, named Atomic, uses NSLock to ensure that only one thread can access the property at a time, preventing race conditions. It's a neat and efficient way to add thread safety to any property in your Swift code, enhancing reliability in concurrent environments. Remember, while this adds thread safety to individual properties, it doesn't make your entire program thread-safe and should be used judiciously to avoid performance bottlenecks.

```swift
@propertyWrapper
struct Atomic<Value> {
    private var value: Value
    private let lock = NSLock()

    init(wrappedValue value: Value) {
        self.value = value
    }

    var wrappedValue: Value {
        get {
            lock.lock()
            defer { lock.unlock() }
            return value
        }
        set {
            lock.lock()
            defer { lock.unlock() }
            value = newValue
        }
    }
}

class MyClass {
    @Atomic var safeProperty: Int
}

var example = MyClass()
example.safeProperty = 42 // Thread-safe assignment
print(example.safeProperty) // Thread-safe read
```

## Reference

[YouTube 👀](https://youtube.com/shorts/iWetKQZxzM0?feature=share)