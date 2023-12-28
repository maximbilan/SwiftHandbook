## Zombie in Swift

NSZombie in Swift is a powerful debugging aid that helps identify and fix use-after-free bugs. When enabled, it turns deallocated objects into zombies that alert you with a clear message instead of crashing when accessed after being freed. This tool is particularly useful in tracking down hard-to-find bugs related to memory management. Remember, NSZombie should only be used during debugging, as it prevents proper deallocation of objects, leading to increased memory usage.

```swift
class MyTestClass {
    var property: String

    init(property: String) {
        self.property = property
    }

    deinit {
        print("MyTestClass is being deinitialized")
    }
}

var instance: MyTestClass? = MyTestClass(property: "Hello, Swift!")
print(instance?.property ?? "No property found")
instance = nil // This should deinitialize the instance

print(instance?.property ?? "No property found") // Safe, it's nil
// Attempt to access the deallocated instance
// (would crash without NSZombie)
instance?.property = "Trying to change property of a nil instance"
```

## Reference

[YouTube 👀](https://youtube.com/shorts/ntpWLmdE7vg?feature=share)
