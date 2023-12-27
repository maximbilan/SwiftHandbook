## 040_solid_isp

The Interface Segregation Principle in Swift encourages creating specific and tailored protocols that align closely with the needs of each client or class. Instead of one large protocol with many methods, you split it into smaller, more focused protocols. This way, a class only implements the methods it needs, avoiding the burden of implementing unnecessary methods. It's like giving each class a menu to choose exactly what it wants, ensuring a clean, efficient, and relevant interface for each type. This principle enhances code maintainability and readability, making your Swift code as sleek and purposeful as a well-tailored suit!

```swift

protocol DigitalContentCreator {
    func createContent()
    func editVideo()
    func writeArticle()
}

protocol ContentCreator {
    func createContent()
}

protocol VideoEditor {
    func editVideo()
}

protocol Writer {
    func writeArticle()
}

class Youtuber: ContentCreator, VideoEditor {
    func createContent() {
        // Create some content
    }

    func editVideo() {
        // Edit the video
    }
}

class Blogger: ContentCreator, Writer {
    func createContent() {
        // Create some content
    }

    func writeArticle() {
        // Write an article
    }
}
```