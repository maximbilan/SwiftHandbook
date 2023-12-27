## Abstraction

In Swift, abstraction is elegantly achieved using protocols. A protocol, like Acceleratable, acts as a blueprint for methods or properties. When classes such as Car, Bicycle, and Rocket conform to Acceleratable, they each provide their unique implementation of the accelerate method. This setup allows different objects to be used interchangeably through a common interface, simplifying code management and focusing on the what over the how. It's a powerful way to hide complexity and keep your Swift code clean and flexible.

```swift
protocol Acceleratable {
    func accelerate()
}

class Car: Acceleratable {
    func accelerate() {
        print("Car is accelerating with its engine!")
    }
}

class Bicycle: Acceleratable {
    func accelerate() {
        print("Bicycle is accelerating by pedaling faster!")
    }
}

class Rocket: Acceleratable {
    func accelerate() {
        print("Rocket is accelerating by firing its thrusters!")
    }
}

func startRace(with vehicle: Acceleratable) {
    vehicle.accelerate()
}

let myCar = Car()
let myBicycle = Bicycle()
let myRocket = Rocket()

startRace(with: myCar) 
// Prints: Car is accelerating with its engine!
startRace(with: myBicycle)
// Prints: Bicycle is accelerating by pedaling faster!
startRace(with: myRocket)
// Prints: Rocket is accelerating by firing its thrusters!
```

## Reference

[YouTube 👀](https://youtube.com/shorts/N4A6_-1eL2g?feature=share)