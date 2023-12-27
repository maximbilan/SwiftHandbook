## 061_union

In Swift, union merges two sets, creating a new set with all unique elements from both. It's like combining the contents of two different boxes without duplicating any items. It's a neat, efficient way to combine sets without repeating elements.

```swift




let setA: Set = [1, 2, 3, 4]
let setB: Set = [3, 4, 5, 6]

let combinedSet = setA.union(setB)
// combinedSet is now [1, 2, 3, 4, 5, 6]

```