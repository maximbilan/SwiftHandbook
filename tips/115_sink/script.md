## Subscriber method for receiving and handling data

In Swift's Combine framework, sink is a method used to subscribe to a publisher. It acts as the endpoint of a data stream, where you receive and handle incoming values and errors. When you use sink, you provide two closures: one for handling values and one for handling completion events. This setup allows you to process data as it arrives and gracefully handle the end of the data stream, whether it's a successful completion or an error. Remember, sink returns a cancellable object, so you should store it to maintain the subscription. It's like setting up a mailbox to receive letters (data) and deciding what to do with them as they arrive!

```swift
import Combine

// Imagine you've got a publisher that emits integers
let numberPublisher = [1, 2, 3, 4, 5].publisher

// Now, let's set up the grand finale with `sink`
var cancellable = numberPublisher
    .sink(
        receiveCompletion: { completion in
            switch completion {
            case .finished:
                print("Completed without errors.")
            case .failure(let error):
                print("Received an error: \(error)")
            }
        },
        receiveValue: { number in
            print("Received number: \(number)")
        }
    )

// Output:
// Received number: 1
// Received number: 2
// Received number: 3
// Received number: 4
// Received number: 5
// Completed without errors.
```

## Reference

[YouTube 👀](https://youtube.com/shorts/AjYC6gy3j_g?feature=share)
