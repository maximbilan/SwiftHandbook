## @inlinable

Inlinable in Swift is about optimizing the performance of your code. By using the @inlinable attribute, you can instruct the Swift compiler to inline the body of a function, method, or computed property. This means the function's code gets inserted directly at each call site, which can reduce the overhead of a function call and potentially lead to more efficient execution. However, this comes with a trade-off. Applying @inlinable exposes the function's implementation details as part of the public API, which can impact future maintenance and binary compatibility. It's best used for small, frequently called functions where you've identified a clear performance benefit.

```swift
public struct MathOperations {
    // Marking the function as inlinable
    @inlinable
    public static func addNumbers(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/cBxbbd1nm48?feature=share)