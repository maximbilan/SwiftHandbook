## CurrentValueSubject

The CurrentValueSubject in Swift's Combine framework acts as a publisher that holds and instantly shares its most recent value with new subscribers. It's ideal for scenarios where you want late subscribers to immediately receive the latest data. However, be cautious with memory usage if the stored value is large, as CurrentValueSubject retains this value. In short, it ensures new subscribers are always up-to-date from the moment they start listening.

```swift
import Combine

// Creating a CurrentValueSubject with an initial value
let subject = CurrentValueSubject<String, Never>("Initial Value")

// Subscribing to receive updates
subject.sink { value in
    print("Subscriber received: \(value)")
}

// Updating the value - your subscribers will be notified
subject.value = "Updated Value"

// Output: Subscriber received: Initial Value
// Output: Subscriber received: Updated Value
```

## Reference

[YouTube 👀](https://youtube.com/shorts/rJ5kKzrrBA0?feature=share)