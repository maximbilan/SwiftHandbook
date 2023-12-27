## How to make operations wait for another to complete

In Swift, you can manage the execution order of operations by using addDependency with Operation and OperationQueue. This method allows you to specify that a certain operation (let's call it Operation B) should not start until another operation (Operation A) is complete. It's like telling Operation B to patiently wait its turn until Operation A finishes its task. This approach is especially useful for coordinating tasks that have a specific sequence or dependency, ensuring smooth and orderly execution in your Swift applications.

```swift
import Foundation

// Creating a custom operation for preparing the venue
class PrepareVenueOperation: Operation {
    override func main() {
        if isCancelled { return }
        print("Preparing the venue...")
        // Simulating some time-consuming task
        sleep(2) 
        print("Venue is ready! ✨")
    }
}

// Creating a custom operation for welcoming guests
class WelcomeGuestsOperation: Operation {
    override func main() {
        if isCancelled { return }
        print("Welcoming guests...")
        // Simulating a task
        sleep(1)
        print("Guests are happy and the event is starting!")
    }
}

// Creating instances of the operations
let operationA = PrepareVenueOperation()
let operationB = WelcomeGuestsOperation()

// Adding dependency - WelcomeGuestsOperation waits for PrepareVenueOperation
operationB.addDependency(operationA)

// Creating an operation queue and adding the operations to it
let queue = OperationQueue()
queue.addOperation(operationA)
queue.addOperation(operationB)
```

## Reference

[YouTube 👀](https://youtube.com/shorts/qaQ0fPVMMno?feature=share)