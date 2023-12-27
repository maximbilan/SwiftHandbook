## CustomStringConvertible protocol

Did you know what the CustomStringConvertible protocol is used for in Swift programming?
Well...
if you have a struct, enum, or class that you often print out for debugging purposes, conforming to CustomStringConvertible to provide a custom string description can save you a lot of time and hassle. Instead of manually typing out each property you want to print, you can just print the object, and Swift will use your custom description.

```swift
struct User {
    var username: String
    var age: Int
}

extension User: CustomStringConvertible {
    var description: String {
        return "\(username) is \(age) years old."
    }
}

let user = User(username: "swiftcoder", age: 25)
print(user) // swiftcoder is 25 years old.
```

## Reference

[YouTube 👀](https://youtube.com/shorts/-eRsf4UPTPc?feature=share)