## Implementing Tree Data Structure in Swift

Create a generic TreeNode class in Swift to build versatile and type-safe tree structures. This class holds any data type (thanks to generics) and maintains a list of child nodes. Simply instantiate nodes and add children to them to build the tree. This approach offers flexibility and is fundamental for organizing hierarchical data, making your Swift code more robust and adaptable.

```swift
class TreeNode<T> {
    var value: T
    var children: [TreeNode] = []

    init(value: T) {
        self.value = value
    }

    func add(child: TreeNode) {
        children.append(child)
    }
}

let root = TreeNode(value: "Root")
let child1 = TreeNode(value: "Child 1")
let child2 = TreeNode(value: "Child 2")

root.add(child: child1)
root.add(child: child2)
```

## Reference

[YouTube 👀](https://youtube.com/shorts/9OV1R547F0Q?feature=share)
