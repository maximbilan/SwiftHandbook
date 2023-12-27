## @discardableResult

Did you know what the "discardable result" attribute does in Swift programming? Well... The "discardableResult" attribute serves to signify that a function's return value can be intentionally disregarded without triggering a warning from the Swift compiler. You're granting a caller the freedom to choose to utilize that result. Please always remember the balance between safety and cleanliness. Hiding the warning might bring some potential issues in the future.

```swift
import Foundation

@discardableResult func logEvent(name: String) -> Bool {
    print(name)
    return true
}

let result = logEvent(name: "event_1")
logEvent(name: "event_1")
```

## Reference

[YouTube 👀](https://youtube.com/shorts/lnLB6a3HsUI?feature=share)