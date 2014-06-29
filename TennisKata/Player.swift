import Foundation

class Player {
    var playerScore = 0

    func getScore() -> Int {
        return playerScore
    }

    func score() {
        playerScore += 1
    }
}