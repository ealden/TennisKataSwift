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
        if (player1.getScore() >= 3) && (player1.getScore() == player2.getScore()) {
            return "Deuce"
        }

        if (player1.getScore() > 3) && (player1.getScore() - player2.getScore() > 1) {
            return "Player 1 wins!"
        } else if (player1.getScore() > 3) && (player1.getScore() - player2.getScore() == 1) {
            return "Advantage Player 1"
        }

        if (player2.getScore() > 3) && (player2.getScore() - player1.getScore() > 1) {
            return "Player 2 wins!"
        } else if (player2.getScore() > 3) && (player2.getScore() - player1.getScore() == 1) {
            return "Advantage Player 2"
        }

        let player1TennisScore = tennisScores[player1.getScore()]
        let player2TennisScore = tennisScores[player2.getScore()]

        if player1TennisScore && player2TennisScore {
            if player1TennisScore! == player2TennisScore {
                return "\(player1TennisScore!)-All"
            } else {
                return "\(player1TennisScore!)-\(player2TennisScore)"
            }
        } else {
            return ""
        }
    }
}