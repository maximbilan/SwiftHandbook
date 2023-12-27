## Encapsulation

In the provided MusicPlayer class example, we encapsulated the playlist using Swift's encapsulation principles. The playlist is a private array, meaning it's hidden from outside access and manipulation. Instead of direct access, we have public methods like addSong, removeSong, and currentPlaylist for controlled interaction with the playlist. This setup ensures that the playlist can only be modified through these specific methods, maintaining the integrity and order of the playlist. It's a perfect example of using encapsulation to protect and manage data access in a structured way in Swift.

```swift
class MusicPlayer {
    // Private array, encapsulating the playlist details
    private var playlist: [String] = []

    // Public method to add a song to the playlist
    func addSong(songName: String) {
        playlist.append(songName)
    }

    // Public method to remove a song from the playlist
    func removeSong(songName: String) {
        if let index = playlist.firstIndex(of: songName) {
            playlist.remove(at: index)
        }
    }

    // Public method to get the current playlist
    func currentPlaylist() -> [String] {
        return playlist
    }
}

// Usage
let myMusicPlayer = MusicPlayer()
myMusicPlayer.addSong(songName: "Swift Symphony")
myMusicPlayer.addSong(songName: "Objective-C Overture")
print(myMusicPlayer.currentPlaylist())
```

## Reference

[YouTube 👀](https://youtube.com/shorts/bxsTB1tzlTI?feature=share)