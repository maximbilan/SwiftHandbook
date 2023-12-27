## How to check the Swift version at compile time

Need to tailor your Swift code for different versions? Use the #if swift(>=version) directive to check the Swift version at compile time. This lets you conditionally compile code based on the version, ensuring compatibility and finesse across different Swift environments. It's like having a secret handshake with each version of Swift!

```swift
#if swift(>=5.0)
    print("Hello, Swift 5!")
#elseif swift(>=4.0)
    print("Old school, eh? Swift 4 in the house!")
#else
    print("This is some ancient Swift version!")
#endif
```

## Reference

[YouTube 👀](https://youtube.com/shorts/HN3qOUnNejc?feature=share)