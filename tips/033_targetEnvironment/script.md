## 033_targetEnvironment

targetEnvironment in Swift is your go-to tool for environment-specific coding. Currently, the main players are simulator and macCatalyst. Use simulator when you want your code to do something special in the iOS Simulator, like testing or debugging features that aren't for the real world. On the other hand, macCatalyst is your key to optimizing your iOS app for the Mac environment. Think of targetEnvironment as your code's chameleon-like superpower, adapting its colors (or functionality) to its surroundings! Happy coding!

```swift




#if targetEnvironment(simulator)
    // This code only runs in the simulator
    print("I'm in a simulator!")
#else
    // This code runs on actual devices
    print("I'm a real device!")
#endif

```