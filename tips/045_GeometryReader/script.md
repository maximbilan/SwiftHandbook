## 045_GeometryReader

Did you know what GeometryReader is for in SwiftUI programming? GeometryReader is utilized to access and respond to the size and position of the parent view. For example, it can be used to set a view's width to a certain percentage of its parent's width, ensuring responsiveness across different devices and orientations. The key is to use GeometryReader wisely, as overuse can complicate layouts. It's most effective when the layout needs to adapt based on the parent view's size or position.

```swift




GeometryReader { geometry in
    VStack {
        Text("Hello, World!")
            .frame(width: geometry.size.width * 0.5)
        // 50% of parent's width
    }
}

```