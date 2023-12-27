## How to check whether a module is available

canImport in Swift is like a bouncer for modules. It checks if a module is available before your code uses it, especially useful for cross-platform development. For instance, it ensures iOS-specific code doesn't accidentally pop up in a macOS environment. Use canImport() to conditionally import modules, keeping your code compatible and crash-free across different platforms. It's a compile-time check, ensuring smooth and efficient code execution.

```swift
#if canImport(UIKit)
import UIKit
// Your iOS specific code goes here
#elseif canImport(AppKit)
import AppKit
// Your macOS specific code goes here
#else
// Your non-iOS code goes here
#endif
```

## Reference

[YouTube 👀](https://youtube.com/shorts/7jifd-Xf5VM?feature=share)