import XCTest

class PlayerTests: XCTestCase {
    let player = Player()

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testShouldReturn0IfPlayerHasNotScored() {
        XCTAssertEqual(player.getScore(), 0)
    }
}
