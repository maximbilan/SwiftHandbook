## 066_objc_members

The objc members attribute in Swift automatically exposes all members of a Swift class (properties, methods, etc.) to Objective-C. This is especially handy in mixed-language projects or when interfacing with Objective-C frameworks. However, use it thoughtfully! Not all Swift features translate to Objective-C, and sometimes, it's overkill to expose the entire class when only a few methods need Objective-C interaction.

```swift




import Foundation

@objcMembers class SpellCaster: NSObject {
    var spellName: String
    
    init(spellName: String) {
        self.spellName = spellName
    }

    func castSpell() {
        print("Casting \(spellName)...")
    }
}

// Usage in Swift
let caster = SpellCaster(spellName: "Fireball")
caster.castSpell()
```