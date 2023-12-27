## Subtract

In Swift, you can use the subtract method to remove elements from one set that are also present in another set. This method modifies the original set by excluding elements found in the specified set. For instance, if you have a set of fruits and want to remove specific fruits, simply define another set with these fruits and use subtract. The elements in the second set will be removed from the first, effortlessly refining your collection.

```swift
var tropicalFruits: Set = ["Mango",
                           "Pineapple",
                           "Papaya",
                           "Coconut"]
let nonSaladFruits: Set = ["Coconut"]

tropicalFruits.subtract(nonSaladFruits)
// Output: ["Mango", "Pineapple", "Papaya"]
```

## Reference

[YouTube 👀](https://youtube.com/shorts/r2X4vxy91Fw?feature=share)