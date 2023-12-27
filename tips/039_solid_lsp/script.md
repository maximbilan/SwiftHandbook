## 039_solid_lsp

Liskov Substitution Principle – it's like a trusty recipe for ensuring your Swift classes stay well-behaved when they go out into the world of inheritance. By using protocols in Swift, we can adhere to the Liskov Substitution Principle in a sleek, Swift way. So, let's create a Flyable protocol and then have only the appropriate types conform to it. In this approach, only birds that can fly conform to the Flyable protocol. The Eagle class, which can fly, conforms to Flyable and implements the fly method. The Ostrich class, which cannot fly, simply does not conform to Flyable. This design adheres to LSP in a protocol-oriented way. You can treat any Flyable object uniformly, knowing that calling fly is always safe and makes sense. It's like having a key for every door that actually opens – no unpleasant surprises!

```swift




protocol Flyable {
    func fly()
}

class Bird {
    // Basic bird stuff here.
}

class Eagle: Bird, Flyable {
    func fly() {
        print("Eagle soaring high!")
    }
}

class Ostrich: Bird {
    // Ostrich specific stuff. No flying here.
}

```