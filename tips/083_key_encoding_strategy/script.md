## 083_key_encoding_strategy

keyEncodingStrategy property of JSONEncoder in Swift is a nifty feature that automatically converts the naming convention of your model's properties when encoding to JSON. For example, if your Swift model uses camelCase, but your JSON needs to be in snake case, the convertToSnakeCase strategy will handle this conversion seamlessly. It's a real time-saver, preventing the need for manual mapping of JSON keys and keeping your Swift code neat and idiomatic. Think of it as a stylist for your data, ensuring it always looks right for the JSON party!

```swift




let user = User(firstName: "Taylor",
                lastName: "Swift",
                emailAddress: "taylor@swift.com")

let encoder = JSONEncoder()
encoder.keyEncodingStrategy = .convertToSnakeCase

do {
    let jsonData = try encoder.encode(user)
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
} catch {
    print("Oops! Encoding failed: \(error)")
}

/// Output:
/// {
///     "first_name": "Taylor",
///     "last_name": "Swift",
///     "email_address": "taylor@swift.com"
/// }
```