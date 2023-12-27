## Lazy Threads

In a multithreaded environment, lazy properties in Swift can introduce some interesting challenges. When a lazy property is accessed from multiple threads simultaneously, there is a risk of the property being initialized more than once. This happens because lazy is not inherently thread-safe. If you anticipate that a lazy property will be accessed by multiple threads, you should handle the synchronization yourself. You could use dispatch queues, locks, or other synchronization mechanisms to ensure that the lazy initialization is thread-safe. In this snippet, the complexNumber property is made thread-safe by using a dispatch queue with a barrier. This ensures that the calculation to initialize complexNumber is only done once, even when accessed from multiple threads.

```swift
class ThreadSafeClass {
    let queue = DispatchQueue(label: "threadsafe", attributes: .concurrent)
    var _complexNumber: Int?

    var complexNumber: Int {
        return queue.sync {
            if _complexNumber == nil {
                _complexNumber = 1
            }
            return _complexNumber!
        }
    }
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/t9KoKxmKz6U?feature=share)