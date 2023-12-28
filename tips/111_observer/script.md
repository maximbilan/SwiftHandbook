## How to implement Observer pattern in Swift

The Observer pattern in Swift allows one object (the publisher) to send updates to multiple other objects (subscribers) that have expressed interest in those updates. In the provided code example, a NewsPublisher broadcasts news to its subscribers, which are instances of classes conforming to the NewsSubscriber protocol. The NewsPublisher keeps track of its subscribers and notifies them with new information. This pattern is useful for creating a one-to-many dependency between objects, where changes in one object (the publisher) trigger actions in all its subscribers. It's a neat and organized way to manage notifications and updates in your Swift applications.

```swift
// Step 1: Define the protocol for the Observer
protocol NewsSubscriber: AnyObject {
    func receive(news: String)
}

// Step 2: The NewsPublisher class
class NewsPublisher {
    private lazy var subscribers = [NewsSubscriber]()

    func subscribe(_ subscriber: NewsSubscriber) {
        subscribers.append(subscriber)
    }

    func publish(news: String) {
        subscribers.forEach { $0.receive(news: news) }
        print("Breaking News: \(news)")
    }
}

// Step 3: Subscribers implementing the protocol
class Newspaper: NewsSubscriber {
    func receive(news: String) {
        print("Newspaper received: \(news)")
    }
}

class NewsApp: NewsSubscriber {
    func receive(news: String) {
        print("NewsApp notified: \(news)")
    }
}

// Step 4: Using the Observer pattern
let publisher = NewsPublisher()
let newspaper = Newspaper()
let newsApp = NewsApp()

publisher.subscribe(newspaper)
publisher.subscribe(newsApp)

publisher.publish(news: "Swift 6.0 Released!")
```

## Reference

[YouTube 👀](https://youtube.com/shorts/JBcGZm4PQL0?feature=share)
