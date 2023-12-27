## Unavailable macro

Did you know in Swift programming, there is an inverted form of the "available" macros called "unavailable", which will run some code if an availability check fails? Starting Swift 5.6, there is. Let me explain how to use it. For example: Before, if you wanted to run code only for earlier iOS versions, you had to write an empty block. But now, you can have a more readable and cleaner code version.

```swift
import Foundation

if #available(iOS 17, *) {
    // empty block
} else {
    // Code to run for iOS 16 and earlier
}

if #unavailable(iOS 17) {
    // Code to run for iOS 16 and earlier
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/SOsiCbf2nMw?feature=share)