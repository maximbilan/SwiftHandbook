## lazy

In Swift, when you declare a property as lazy, it means that its initial value is not calculated until the first time it is used. It is like your code saying, I will do it later, but only if I really have to. This can be incredibly useful for optimizing performance, especially when initializing an object is resource-intensive. What about threading and laziness? It is a more complex question. See you in the next video.

```swift


class MyClass {
    lazy var complexNumber: Int = {
        // Some complex calculation
        return 31
    }()
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/HAx5TBEfag8?feature=share)