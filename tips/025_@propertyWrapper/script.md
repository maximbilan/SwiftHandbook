## 025_@propertyWrapper

Did you hear something about property wrappers in Swift Programming? Well... Suppose you have a property that should always be stored in lowercase. Normally, you'd need to ensure it's lowercase everywhere you set it. But with propertyWrapper, you can create a Lowercased wrapper that takes care of this automatically.Lowercased ensures that whatever string you feed it, it's stored in lowercase. No more manual .lowercased() calls scattered around your code. Property wrappers are powerful because they abstract repetitive logic away from your properties, making your code cleaner and more expressive. Happy coding!

```swift


@propertyWrapper
struct Lowercased {
    private var value: String = ""

    var wrappedValue: String {
        get { value }
        set { value = newValue.lowercased() }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}

struct User {
    @Lowercased var username: String
}

var user = User(username: "SwiftMaster")
print(user.username) // "swiftmaster"

```