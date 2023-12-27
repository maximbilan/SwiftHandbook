## 071_delegation

In Swift, delegation is a design pattern where one object delegates certain tasks to another object. To ensure clear communication and avoid errors, it's important to define a protocol that specifies the methods the delegate is expected to handle. This is akin to giving a to-do list to an assistant, outlining their responsibilities. By using a protocol, you set clear expectations for the delegate, ensuring that it knows exactly what tasks to perform, much like a well-organized team where everyone knows their role.

```swift




protocol CustomViewDelegate: AnyObject {
    func buttonTapped()
}

class CustomView: UIView {
    weak var delegate: CustomViewDelegate?
    
    func userDidTapButton() {
        delegate?.buttonTapped()
    }
}

class ViewController: UIViewController, CustomViewDelegate {
    func buttonTapped() {
        print("Look ma, I'm handling a button tap!")
    }
}

```