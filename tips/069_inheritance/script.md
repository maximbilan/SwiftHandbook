## 069_inheritance

Let's consider inheritance in Swift. We created a basic Vehicle class and a Car subclass that inherits from Vehicle. The Car class not only inherits Vehicle's properties and methods but also introduces its own unique property (gear) and customizes the makeNoise method to better fit a car's characteristics. This demonstrates how inheritance in Swift allows subclasses to build upon and tailor the functionalities of their superclasses, akin to taking a family heirloom and adding your own personal touch to it.

```swift




class Vehicle {
    var currentSpeed = 0.0

    // A method that describes the vehicle's moving speed.
    func makeNoise() {
        print("\(currentSpeed) mph. Exciting, isn't it?")
    }
}

// Now, let's introduce Car, inheriting from Vehicle.
class Car: Vehicle {
    var gear = 1

    // Override the makeNoise method to add a bit more personality.
    override func makeNoise() {
        print("I'm a car in gear \(gear), \(currentSpeed) mph!")
    }
}

// Let's take our Car for a spin.
let myCar = Car()
myCar.currentSpeed = 50
myCar.gear = 3
myCar.makeNoise()
// Output: I'm a car in gear 3, 50 mph!

```