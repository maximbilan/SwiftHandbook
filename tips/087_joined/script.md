## 087_joined

The joined function in Swift is like the conductor of an orchestra, skillfully blending multiple arrays into one seamless melody. When you have an array of arrays, joined() takes the stage, smoothly merging these arrays into a single, iterable sequence. It's perfect for situations where you want to transition from a complex symphony of nested collections to a straightforward, single line of elements.

```swift




let orchestra = [["violin", "viola"],
                ["trumpet", "trombone"],
                ["flute", "oboe"]]

let ensemble = orchestra.joined()

for instrument in ensemble {
    print(instrument)
}

// ["violin", "viola", "trumpet", "trombone", "flute", "oboe"]

```