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
        game.scorePlayer1()

        XCTAssertEqual(game.getScore(), "Fifteen-Love")
    }

    func testScoreShouldBeThirtyLoveWhenPlayerOneScoresTwice() {
        game.scorePlayer1()
        game.scorePlayer1()

        XCTAssertEqual(game.getScore(), "Thirty-Love")
    }

    func testScoreShouldBeFortyLoveWhenPlayerOneScoresThrice() {
        game.scorePlayer1()
        game.scorePlayer1()
        game.scorePlayer1()

        XCTAssertEqual(game.getScore(), "Forty-Love")
    }

    func testScoreShouldBeLoveFifteenWhenPlayerTwoScores() {
        game.scorePlayer2()

        XCTAssertEqual(game.getScore(), "Love-Fifteen")
    }
}
