## Swizzling

method swizzling, a technique used to change the implementation of an existing method at runtime. The example provided demonstrates how to swizzle the viewWillAppear(_:) method of UIViewController with a custom method swizzled_viewWillAppear(_:). This swizzling allows us to inject custom behavior (like logging) every time a view controller appears, without altering the original functionality of viewWillAppear(_:). The magic is done using Objective-C runtime functions within Swift, emphasizing the need for caution and thorough testing. It's a clever trick, akin to a coding sleight of hand, to add some extra functionality to your app in an unobtrusive way. Remember, swizzling in Swift is like a secret spice - best used sparingly and wisely!

```swift
import UIKit
import ObjectiveC

extension UIViewController {

    static func swizzleViewWillAppear() {
        // Ensure this isn't a subclass of UIViewController, so this only happens once
        guard self === UIViewController.self else { return }

        let originalSelector = #selector(viewWillAppear(_:))
        let swizzledSelector = #selector(swizzled_viewWillAppear(_:))

        guard let originalMethod = class_getInstanceMethod(self, originalSelector),
              let swizzledMethod = class_getInstanceMethod(self, swizzledSelector) else { return }

        method_exchangeImplementations(originalMethod, swizzledMethod)
    }

    @objc func swizzled_viewWillAppear(_ animated: Bool) {
        // Call the original 'viewWillAppear'
        // It's not a recursive call, thanks to swizzling
        swizzled_viewWillAppear(animated)
    }
}

extension AppDelegate {
    static func initializeSwizzling() {
        // Ensuring the swizzling happens only once
        DispatchQueue.once(token: "com.yourapp.viewControllerSwizzling") {
            UIViewController.swizzleViewWillAppear()
        }
    }
}

extension DispatchQueue {
    static var tokens: [String] = []
    static func once(token: String, block: () -> Void) {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }

        if tokens.contains(token) {
            return
        }

        tokens.append(token)
        block()
    }
}

AppDelegate.initializeSwizzling()
```

## Reference

[YouTube 👀](https://youtube.com/shorts/Q2cC99WXKVU?feature=share)
