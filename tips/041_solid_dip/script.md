## 041_solid_dip

The Dependency Inversion Principle in Swift encourages you to design your code to depend on abstractions (like protocols) rather than concrete implementations (like specific classes). This approach increases flexibility and makes your code more resilient to changes. In this example, the Notifier protocol is the abstraction, with EmailNotifier and SMSNotifier as concrete implementations. The EventManager class is designed to work with any implementation of Notifier, making it easy to switch or add new notification methods without modifying the EventManager's code. Dependency Inversion Principle is like being a great band manager: you focus on the talent, not the instrument, allowing your code to hit the high notes of maintainability and scalability.

```swift

protocol Notifier {
    func send(message: String)
}

class EmailNotifier: Notifier {
    func send(message: String) {
        print("Sending email: \(message)")
    }
}

class SMSNotifier: Notifier {
    func send(message: String) {
        print("Sending SMS: \(message)")
    }
}

class EventManager {
    let notifier: Notifier

    init(notifier: Notifier) {
        self.notifier = notifier
    }

    func notifyEventOccurred(message: String) {
        notifier.send(message: message)
    }
}

let emailNotifier = EmailNotifier()
let eventManager = EventManager(notifier: emailNotifier)
eventManager.notifyEventOccurred(message: "New event")

```