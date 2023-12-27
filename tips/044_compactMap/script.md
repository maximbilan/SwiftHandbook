## 044_compactMap

compactMap in Swift is like a clever filter that also transforms data. Imagine you have an array with some elements and some nils. Using compactMap, you can both remove the nils and change the remaining elements in one smooth step. It's like picking and refining the best parts from a mixed collection, making your data cleaner and more useful. Perfect for when you need efficiency and elegance in your code!


```swift




let mixedArray: [String?] = ["Apple", 
                             nil,
                             "Banana",
                             nil,
                             "Cherry"]
let r = mixedArray.compactMap { $0?.lowercased() }
// r is ["apple", "banana", "cherry"]

```