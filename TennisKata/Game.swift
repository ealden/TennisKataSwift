import Foundation

class Game {
    var player1Score = 0

    func getScore() -> String {
        if player1Score == 1 {
            return "Fifteen-Love"
        } else if player1Score == 2 {
            return "Thirty-Love"
        } else {
            return "Love-Love"
        }
    }

    func scorePlayer1() {
        player1Score += 1
    }
}