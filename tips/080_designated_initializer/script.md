## 080_designated_initializer

In Swift, when dealing with inheritance, designated initializers play a crucial role in ensuring a proper and thorough initialization process across the class hierarchy. In this example, we have a base class Vehicle with its own designated initializer, and a subclass Car with its specialized designated initializer. The Car class's initializer first handles its specific properties and then calls the superclass's designated initializer using super.init to ensure that the inherited properties (like numberOfWheels) are also properly initialized. This demonstrates how designated initializers in subclasses must always delegate up to their superclass's designated initializer, maintaining a structured and reliable initialization sequence from the base class to its subclasses.

```swift




class Vehicle {
    var numberOfWheels: Int

    // Designated initializer for the Vehicle class
    init(numberOfWheels: Int) {
        self.numberOfWheels = numberOfWheels
        print("A new vehicle with \(numberOfWheels) wheels is here!")
    }
}

class Car: Vehicle {
    var make: String
    var model: String

    // Designated initializer for the Car class
    init(make: String, model: String) {
        self.make = make
        self.model = model
        // Delegating up to the Vehicle's designated initializer
        super.init(numberOfWheels: 4) // Cars typically have 4 wheels
        print("The \(make) \(model) is ready to drive!")
    }
}

// Time to create a car!
let myCar = Car(make: "SwiftMobile", model: "AI-Driven")

```