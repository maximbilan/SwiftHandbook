## Polymorphism

In Swift, polymorphism allows you to treat different objects similarly, regardless of their specific class. By using protocols, you can define common functionalities that various classes can adopt and implement in their own way. For example, you can have a protocol SuperheroActions with a method performAction. Different superhero classes like Superman and Batman can conform to this protocol and provide their unique implementations of performAction. A function that takes a SuperheroActions object can then invoke performAction on any superhero, be it Superman or Batman, and the appropriate action for that superhero will be executed. This illustrates how polymorphism in Swift can be effectively achieved through protocol-oriented programming.

```swift
protocol SuperheroActions {
    func performAction()
}

class Superman: SuperheroActions {
    func performAction() {
        print("Flying high!")
    }
}

class Batman: SuperheroActions {
    func performAction() {
        print("Driving the Batmobile!")
    }
}

func initiateAction(superhero: SuperheroActions) {
    superhero.performAction()
}

let clark = Superman()
let bruce = Batman()

initiateAction(superhero: clark)
// Output: Flying high!
initiateAction(superhero: bruce)
// Output: Driving the Batmobile!
```

## Reference

[YouTube 👀](https://youtube.com/shorts/G0sVGn7C0ww?feature=share)