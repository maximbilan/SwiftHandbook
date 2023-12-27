## 060_intersection

Think of intersection in Swift as a special club where only the elements that are members of both sets can enter. It's a highly efficient way to identify elements that two sets have in common. In this example. We have two sets: fridgeFruits and allergicFruits. By using intersection, we swiftly find out which fruits are both in your fridge and on your allergy list.fruitsToAvoid will contain fruits that are in both sets – in this case, banana and kiwi. This method is a lifesaver when you need to quickly pinpoint common items between sets.

```swift




// Set of fruits in your fridge
let fridgeFruits: Set = ["apple", "banana", "orange", "kiwi"]

// Set of fruits you're allergic to
let allergicFruits: Set = ["banana", "strawberry", "kiwi"]

// Finding fruits to avoid by using intersection
let fruitsToAvoid = fridgeFruits.intersection(allergicFruits)

print("Fruits to Avoid: \(fruitsToAvoid)")
/// Prints "Fruits to Avoid: ["kiwi", "banana"]"

```