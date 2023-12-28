## How to use Facade design pattern in Swift

The Facade pattern in Swift is all about providing a simple interface to a complex system. In the example, we have a SoundManager facade that interacts with more complicated subsystems like an equalizer, a compressor, and a file handler. Each of these subsystems performs intricate tasks, but the user doesn't need to interact with them directly. Instead, the SoundManager offers straightforward methods like playSound and adjustSound. When you use these methods, the SoundManager handles all the complex interactions with the underlying subsystems. This simplifies the client code, as you only need to interact with the facade, not the complex components beneath. The key benefit of this pattern is that it reduces the complexity faced by the user. It encapsulates the intricacies of the subsystems, leading to code that's easier to understand, maintain, and modify.

```swift
// Complex subsystem components
class Equalizer {
    func setBassLevel(_ level: Int) { /* ... */ }
    func setTrebleLevel(_ level: Int) { /* ... */ }
    // More complex methods...
}

class Compressor {
    func compressSound(_ input: String) { /* ... */ }
    // More complex methods...
}

class FileHandler {
    func readFile(_ filename: String) -> String { /* ... */ }
    func writeFile(_ filename: String, data: String) { /* ... */ }
    // More complex methods...
}

// Facade
class SoundManager {
    private let equalizer = Equalizer()
    private let compressor = Compressor()
    private let fileHandler = FileHandler()

    func playSound(filename: String) {
        let fileData = fileHandler.readFile(filename)
        let compressedData = compressor.compressSound(fileData)
        // Play the sound using compressed data...
        print("Playing sound: \(filename)")
    }

    func adjustSound(bass: Int, treble: Int) {
        equalizer.setBassLevel(bass)
        equalizer.setTrebleLevel(treble)
        print("Sound adjusted with bass: \(bass) and treble: \(treble)")
    }
}

// Client code
let soundManager = SoundManager()
soundManager.playSound(filename: "song.mp3")
soundManager.adjustSound(bass: 5, treble: 7)
```

## Reference

[YouTube 👀]()