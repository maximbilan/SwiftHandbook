## 019_opaque_types

Did you know to use opaque types in Swift to maintain API flexibility without exposing implementation details? Well... When returning a collection from a function, use the some keyword to declare an opaque type. This keeps your API flexible by hiding the exact return type, allowing you to change the underlying type later without impacting your API consumers. This approach offers both privacy and adaptability, ensuring your API remains both stable and versatile. Happy coding!


```swift




/// Classic way
func createCollection() -> [SomeElement] { /* ... */ }

/// Opaque type way
func createCollection() -> some Collection { /* ... */ }


```