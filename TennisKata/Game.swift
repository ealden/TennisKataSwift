import Foundation

class Game {
    let tennisScores = [
        0: "Love",
        1: "Fifteen",
        2: "Thirty",
        3: "Forty"
    ]

    var player1: Player
    var player2: Player

    init() {
        player1 = Player()
        player2 = Player()
    }

    init(player1: Player, player2: Player) {
        self.player1 = player1
        self.player2 = player2
    }

    func getScore() -> String {
        let player1TennisScore = tennisScores[player1.getScore()]
        let player2TennisScore = tennisScores[player2.getScore()]

        if player1TennisScore && player2TennisScore {
            return "\(player1TennisScore!)-\(player2TennisScore)"
        } else {
            return ""
        }
    }

    func scorePlayer1() {
        player1.score()
    }

    func scorePlayer2() {
        player2.score()
    }
}