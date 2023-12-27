## Codable

Using the Codable protocol you can handle JSON data in Swift efficiently, particularly when dealing with JSON keys that don't match the Swift naming conventions. By defining a nested CodingKeys enum within your data model structs, you can easily map JSON key names (like user_id in snake_case) to Swift-friendly variable names (like userId in camelCase). This approach not only maintains the readability and cleanliness of your Swift code but also allows seamless encoding and decoding of JSON data, even when the JSON structure is complex or inconsistently formatted. It's a powerful way to handle JSON parsing with minimal hassle and maximum readability.

```swift
import Foundation

struct User: Codable {
    var userId: Int
    var email: String
    var profile: Profile

    enum CodingKeys: String, CodingKey {
        case userId = "user_id"
        case email
        case profile = "profile_details"
    }
}

struct Profile: Codable {
    var firstName: String
    var lastName: String

    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
    }
}

let jsonData = """
{
    "user_id": 42,
    "email": "swiftwizard@example.com",
    "profile_details": {
        "first_name": "Swift",
        "last_name": "Wizard"
    }
}
""".data(using: .utf8)!

do {
    let user = try JSONDecoder().decode(User.self, from: jsonData)
    print("User ID: \(user.userId)")
    print("Email: \(user.email)")
    print("Name: \(user.profile.firstName) \(user.profile.lastName)")
} catch {
    print("Oops! Something went wrong: \(error)")
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/o9gDiOcipSo?feature=share)