## 029_@dynamicMemberLookup

The @dynamicMemberLookup attribute in Swift allows you to access properties dynamically on a type, even if those properties are not explicitly defined. By implementing a subscript method with a dynamicMember parameter in your type (such as a class or struct), you enable instances of that type to handle property accesses in a custom way. This feature is particularly useful for interacting with dynamic data sources, like JSON, or bridging with dynamic languages. However, it should be used judiciously to maintain code clarity and maintainability. Happy coding!

```swift


@dynamicMemberLookup
struct SettingsManager {
    private var settings: [String: String] = [:]

    // The dynamic member subscript
    subscript(dynamicMember member: String) -> String? {
        get {
            return settings[member]
        }
        set {
            settings[member] = newValue
        }
    }
}

var settings = SettingsManager()
settings.username = "user"
settings.password = "123456"

print("Username: \(settings.username ?? "unknown")")
print("Password: \(settings.password ?? "unknown")")

```