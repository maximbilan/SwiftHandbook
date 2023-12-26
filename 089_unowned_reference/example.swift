



class Captain {
    var ship: Ship?
    // Captain has a strong reference to Ship.
}

class Ship {
    unowned var captain: Captain
    // Ship has an unowned reference to Captain.
    
    init(captain: Captain) {
        self.captain = captain
    }
}

var captainJack: Captain? = Captain()
var blackPearl: Ship? = Ship(captain: captainJack!)
captainJack?.ship = blackPearl

captainJack = nil
// When we set captainJack to nil,
// the Ship instance will not prevent
// the Captain from being deallocated.
