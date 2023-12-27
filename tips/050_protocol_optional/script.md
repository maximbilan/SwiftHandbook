## Protocol Optional

In Swift, while protocol requirements are usually mandatory, you can create optional requirements by mixing in some Objective-C flavor. This is done by importing the Foundation framework, marking your protocol with the @objc attribute, and then specifying optional methods or properties with @objc optional. This approach allows types conforming to the protocol to choose whether or not to implement these optional elements. Remember, this utilizes Objective-C runtime features, so it's a bit of a hybrid approach in a Swift environment. Use this feature judiciously to keep your protocols clear and maintain the Swift-like feel in your code.

```swift
import Foundation

@objc protocol PartyPlanner {
    var numberOfGuests: Int { get }
    func planMenu()

    @objc optional func arrangeMusicPlaylist()
    @objc optional func organizeGames()
}

class BirthdayPartyPlanner: PartyPlanner {
    var numberOfGuests = 50
    
    func planMenu() {
        print("Planning a birthday cake and snacks!")
    }

    // No need to implement arrangeMusicPlaylist or organizeGames
}

class FunFairPlanner: PartyPlanner {
    var numberOfGuests = 200
    
    func planMenu() {
        print("Planning cotton candy stands!")
    }

    func arrangeMusicPlaylist() {
        print("Creating a playlist with fun fair tunes!")
    }

    // No need to implement organizeGames
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/iOP0W_VL0aw?feature=share)