## 051_@Environment

The Environment property wrapper in SwiftUI allows you to access and respond to environmental values set by the system, like dark or light mode. It helps your views adapt automatically to changes in these values. For instance, by using Environment color scheme, you can change text color based on whether the device is in dark or light mode, making your app dynamically responsive to user settings. It's a handy tool for creating adaptive and context-aware UI elements in your Swift applications.

```swift




import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme

    var color: Color {
        colorScheme == .dark ? .black : .white
    }

    var body: some View {
        Text("Hello, World!")
            .foregroundColor(color)
    }
}
```