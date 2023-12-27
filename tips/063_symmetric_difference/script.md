## 063_symmetric_difference

Symmetric Difference method finds elements that are unique to each of two sets, excluding those common to both. For example, if you have two sets, setA and setB, symmetric difference returns a new set with elements that are either in setA or setB, but not in both. It's a quick and elegant way to identify unique elements between sets without altering the original sets.

```swift




let setA: Set = [1, 2, 3, 4, 5]
let setB: Set = [4, 5, 6, 7, 8]

let unique = setA.symmetricDifference(setB)
// Output: [1, 2, 3, 6, 7, 8]
```