## 058_PassthroughSubject

Imagine PassthroughSubject as a mischievous cat in a Swift app, causing various events (like knocking over a vase or chasing the dog). This subject acts as a broadcaster, sending out these cat-tastrophes in real-time to subscribers. In this example, we set up a PassthroughSubject to emit String events, subscribe to it to receive updates, and then simulate some cat antics. Each event is immediately passed to the subscriber, demonstrating PassthroughSubject's role in handling and broadcasting real-time events in an app. It's like having a playful cat keeping everyone in the app instantly informed about its latest antics!

```swift



import Combine

// Define a PassthroughSubject that broadcasts events of type String
let catEvents = PassthroughSubject<String, Never>()

// Subscribers who want to listen to the cat's shenanigans
var subscriptions = Set<AnyCancellable>()

// Let's subscribe to these events
catEvents
    .sink { event in
        print("🐾 The cat did something: \(event)")
    }
    .store(in: &subscriptions)

// Time for some cat-tastrophic events!
catEvents.send("knocked over a vase")
catEvents.send("chased the dog")
catEvents.send("unrolled the toilet paper")

// When you're done
catEvents.send(completion: .finished)

```