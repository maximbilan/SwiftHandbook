## Unowned Reference

In Swift, unowned references help prevent memory leaks by avoiding retain cycles. It's used when one object (say, a Ship) needs to reference another (like a Captain), but without taking ownership. Unlike a strong reference, an unowned reference does not increase the reference count of the object it points to. This means when the object holding the unowned reference (the Ship) is alive, it assumes the referenced object (the Captain) is also alive. However, if the referenced object is deallocated, the unowned reference becomes invalid, potentially leading to runtime crashes if not handled carefully. It’s a great tool for ensuring that objects are freed properly, but it requires the confidence that the referenced object will outlive the one with the unowned reference.

```swift
class Captain {
    var ship: Ship?
    // Captain has a strong reference to Ship.
}

class Ship {
    unowned var captain: Captain
    // Ship has an unowned reference to Captain.
    
    init(captain: Captain) {
        self.captain = captain
    }
}

var captainJack: Captain? = Captain()
var blackPearl: Ship? = Ship(captain: captainJack!)
captainJack?.ship = blackPearl

// When we set captainJack to nil, the Ship instance will not prevent the Captain from being deallocated.
captainJack = nil
```
