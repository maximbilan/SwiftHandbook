## autoclosure

Did you know how the autoclosure works in Swift programming? Well... The autoclosure attribute in Swift is like a bit of programming magic. It automatically turns an expression into a closure, making your code cleaner and more concise. Instead of manually wrapping expressions in closures, autoclosure does it for you, allowing you to write more natural and intuitive code. It is a handy tool, but like any potent spell, it should be used wisely to avoid making your code confusing.

```swift
func logIfTrue(_ predicate: @autoclosure () -> Bool) {
    if predicate() {
        print("It's true!")
    }
}

logIfTrue({ return 1 > 0 }) /// Without @autoclosure
logIfTrue(1 > 0) /// With @autoclosure
```

## Reference

[YouTube 👀](https://youtube.com/shorts/PNPqUnhc3xQ?feature=share)