## RunLoop for Precise Timing in Swift

Utilize Swift's RunLoop for high-precision timing tasks. By adding a timer to the RunLoop with common mode, you ensure more accurate and consistent execution of timed operations, even amidst other ongoing events like UI updates. This approach provides a significant advantage over basic timers for scenarios demanding exact timing, like performing actions every second with precision. However, be cautious with its use to avoid potential performance impacts due to the extra load on the thread.

```swift
import Foundation

// Imagine this function does something amazing every second
func performPrecisionTask() {
    print("Task performed at \(Date())")
}

// Creating a timer
let timer = Timer(timeInterval: 1.0, repeats: true) { _ in
    performPrecisionTask()
}

// Adding the timer to the current RunLoop
RunLoop.current.add(timer, forMode: .common)

// Keeping the main thread alive
RunLoop.current.run()
```

## Reference

[YouTube 👀](https://youtube.com/shorts/rzxl9gIIwNc?feature=share)
