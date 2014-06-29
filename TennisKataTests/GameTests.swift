import XCTest

class GameTests: XCTestCase {
    let game = Game()

    override func setUp() {
        super.setUp()
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
}
