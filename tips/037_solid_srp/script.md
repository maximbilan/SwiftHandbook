## SOLID Single responsibility principle

In the Single Responsibility Principle, in Swift context, we focus on giving each class a single, well-defined purpose. The idea is to avoid classes that are jacks-of-all-trades. We then split the logic into two classes: UserProfileManager for managing user data and UserProfileUI for handling the UI. The UserProfileManager class deals with user information like names and emails, ensuring that user data is handled in one place. Meanwhile, UserProfileUI is responsible for how this information is displayed and updated on the UI. This approach keeps our classes neat, focused, and easier to maintain. It's a simple yet effective way to write cleaner, more maintainable Swift code.

```swift
final class UserProfileManager {
    let userName: String
    let userEmail: String

    init(userName: String, userEmail: String) {
        self.userName = userName
        self.userEmail = userEmail
    }

    func updateUserName(newName: String) {
        userName = newName // Just handles user data, not UI
    }
}

final class UserProfileUI {
    let userProfileManager: UserProfileManager

    init(userProfileManager: UserProfileManager) {
        self.userProfileManager = userProfileManager
    }

    func updateUserNameDisplay() {
        print("User name updated to: \(userProfileManager.userName)")
    }
}

let manager = UserProfileManager(userName: "coder", userEmail: "coder@example.com")
let userUI = UserProfileUI(userProfileManager: manager)

// Update user name
manager.updateUserName(newName: "lazy coder")
// Update UI separately
userUI.updateUserNameDisplay()
```

## Reference

[YouTube 👀](https://youtube.com/shorts/5yH8SbD9kQM?feature=share)