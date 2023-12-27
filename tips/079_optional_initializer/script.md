## Optional Initializer

In Swift, optional initializers allow the creation of a struct or class instance to gracefully fail by returning nil when certain conditions aren't met. They're ideal for situations where initialization might not always succeed, like when certain required data is missing or invalid. This approach ensures safer and more predictable code by explicitly handling potential failure scenarios right at the point of object creation. It's like having a built-in safety check for your object constructions!

```swift
struct Movie {
    var title: String
    var director: String

    init?(title: String) {
        guard let director = fetchDirector(for: title) else {
            return nil
        }
        self.title = title
        self.director = director
    }
}

let movie = Movie(title: "Eddie the Eagle")
```

## Reference

[YouTube 👀](https://youtube.com/shorts/tbdc04AwR00?feature=share)