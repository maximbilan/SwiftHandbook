## How to use Adapter pattern in Swift

In Swift, the Adapter pattern allows incompatible interfaces to work together. It's like a bridge between two different worlds. The example provided demonstrates this with a MusicPlayer protocol and a VintageRadio class. VintageRadio doesn't naturally conform to MusicPlayer, so an RadioAdapter class is created. This adapter implements MusicPlayer and internally uses an instance of VintageRadio, translating playMusic() calls into playOldFmRadio(). By wrapping the old radio in this adapter, it can now be used wherever a MusicPlayer is expected, showcasing the power of the Adapter pattern in harmonizing disparate interfaces in Swift.

```swift
protocol MusicPlayer {
    func playMusic()
}

// The legacy class, speaking a different 'interface language'
class VintageRadio {
    func playOldFmRadio() {
        print("Playing music from the old FM radio!")
    }
}

// The Adapter - Your universal translator
class RadioAdapter: MusicPlayer {
    private var vintageRadio: VintageRadio

    init(_ radio: VintageRadio) {
        self.vintageRadio = radio
    }

    func playMusic() {
        // Translates the call into the language of VintageRadio
        vintageRadio.playOldFmRadio()
    }
}

// Usage
let oldRadio = VintageRadio()
let musicPlayer: MusicPlayer = RadioAdapter(oldRadio)

musicPlayer.playMusic()
// Outputs: Playing music from the old FM radio!
```

## Reference

[YouTube 👀](https://youtube.com/shorts/t4qREJJ32v0?feature=share)
