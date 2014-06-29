import XCTest

class GameTests: XCTestCase {
    var game = Game()

    let player1 = Player()
    let player2 = Player()

    override func setUp() {
        super.setUp()

        game = Game(player1: player1, player2: player2)
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testScoreShouldBeLoveLoveAtTheStartOfTheGame() {
        XCTAssertEqual(game.getScore(), "Love-Love")
    }

    func testScoreShouldBeFifteenLoveWhenPlayerOneScores() {
        player1.score()

        XCTAssertEqual(game.getScore(), "Fifteen-Love")
    }

    func testScoreShouldBeThirtyLoveWhenPlayerOneScoresTwice() {
        player1.score()
        player1.score()

        XCTAssertEqual(game.getScore(), "Thirty-Love")
    }

    func testScoreShouldBeFortyLoveWhenPlayerOneScoresThrice() {
        player1.score()
        player1.score()
        player1.score()

        XCTAssertEqual(game.getScore(), "Forty-Love")
    }

    func testScoreShouldBeLoveFifteenWhenPlayerTwoScores() {
        player2.score()

        XCTAssertEqual(game.getScore(), "Love-Fifteen")
    }

    func testScoreShouldBePlayer1WinsWhenPlayerOneScoresFourTimes() {
        player1.score()
        player1.score()
        player1.score()
        player1.score()

        XCTAssertEqual(game.getScore(), "Player 1 wins!")
    }

    func testScoreShouldBePlayer2WinsWhenPlayerTwoScoresFourTimes() {
        player2.score()
        player2.score()
        player2.score()
        player2.score()

        XCTAssertEqual(game.getScore(), "Player 2 wins!")
    }

    func testScoreShouldBePlayer1WinsWhenPlayerOneScoresFourTimesAndPlayerTwoScoresTwice() {
        player1.score()
        player1.score()
        player1.score()
        player1.score()

        player2.score()
        player2.score()

        XCTAssertEqual(game.getScore(), "Player 1 wins!")
    }

    func testScoreShouldBePlayer2WinsWhenPlayerTwoScoresFourTimesAndPlayerOneScoresTwice() {
        player1.score()
        player1.score()

        player2.score()
        player2.score()
        player2.score()
        player2.score()

        XCTAssertEqual(game.getScore(), "Player 2 wins!")
    }

    func testScoreShouldBeDueceWhenBothPlayersScoreThrice() {
        player1.score()
        player1.score()
        player1.score()

        player2.score()
        player2.score()
        player2.score()

        XCTAssertEqual(game.getScore(), "Duece")
    }
}
