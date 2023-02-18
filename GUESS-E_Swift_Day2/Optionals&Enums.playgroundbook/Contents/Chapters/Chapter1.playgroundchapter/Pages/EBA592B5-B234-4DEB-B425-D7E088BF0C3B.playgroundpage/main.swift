
enum GameState { 
    case initializing(Int), playing(String), lost
    
    var asString: String {
        switch self {
        case .lost:
            return "Losing is in progress, please wait."
        case .playing(let someString):
            return "Playing is in progress, please wait."
        case .initializing(let someInt):
            return "Loading is in progress, please wait."
            
        }
    }
}

var myGameState: GameState = .playing("Sasdasd")

enum Optional<Wrapped> { 
    case some(Wrapped)
    case nil
}
// init logic
print(myGameState)
