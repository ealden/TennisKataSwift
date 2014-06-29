import Foundation

class Game {
    let tennisScores = [
        0: "Love",
        1: "Fifteen",
        2: "Thirty",
        3: "Forty"
    ]

    var player1Score = 0

    func getScore() -> String {
        if let tennisScore = tennisScores[player1Score] {
            return "\(tennisScore)-Love"
        }

        return ""
    }

    func scorePlayer1() {
        player1Score += 1
    }
}