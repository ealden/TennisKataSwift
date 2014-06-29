import Foundation

class Game {
    let tennisScores = [
        0: "Love",
        1: "Fifteen",
        2: "Thirty",
        3: "Forty"
    ]

    var player1Score = 0
    var player2Score = 0

    func getScore() -> String {
        let player1TennisScore = tennisScores[player1Score]
        let player2TennisScore = tennisScores[player2Score]

        if player1TennisScore && player2TennisScore {
            return "\(player1TennisScore!)-\(player2TennisScore)"
        } else {
            return ""
        }
    }

    func scorePlayer1() {
        player1Score += 1
    }

    func scorePlayer2() {
        player2Score += 1
    }
}