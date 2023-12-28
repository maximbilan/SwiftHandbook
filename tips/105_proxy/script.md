## How to use Proxy pattern in Swift

The Proxy pattern allows you to create a surrogate or placeholder for another object, controlling its access while adding extra functionality. In Swift, you can apply this pattern to lazy initialization of objects, access control, or even logging. In this example, ImageProxy is a proxy for the RealImage. It delays the creation and loading of the RealImage until it's actually needed, optimizing resource usage.

```swift
protocol Image {
    func display()
}

class RealImage: Image {
    let filename: String
    
    init(filename: String) {
        self.filename = filename
        loadFromDisk()
    }
    
    func loadFromDisk() {
        print("Loading image from disk: \(filename)")
    }
    
    func display() {
        print("Displaying image: \(filename)")
    }
}

class ImageProxy: Image {
    lazy private var realImage: RealImage = {
        let image = RealImage(filename: "sample.jpg")
        return image
    }()
    
    func display() {
        realImage.display()
    }
}

// Usage
let image: Image = ImageProxy()
// RealImage is loaded and displayed only when needed
image.display() 
```

## Reference

[YouTube 👀]()