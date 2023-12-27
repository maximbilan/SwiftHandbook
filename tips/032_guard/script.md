## guard

Use Swift's guard statement to make your code cleaner and more readable. Think of guard as a checkpoint at the start of a function. It checks for specific conditions (like non-empty usernames and passwords) and only lets the code proceed if these conditions are met. If not, it triggers an else block that typically exits the function early. This approach helps avoid deep nesting of if-else statements, making your code more streamlined and easier to understand.

```swift
func loginUser(username: String?, password: String?) {
    guard let username = username, !username.isEmpty,
          let password = password, !password.isEmpty else {
        print("Hold up! Username and password can't be empty.")
        return
    }

    print("Welcome, \(username)! You've successfully logged in.")
}

```

## Reference

[YouTube 👀](https://youtube.com/shorts/bPEKC9m2kxA?feature=share)