import XCTest
@testable import ExplicitArchitecture

final class ExplicitArchitectureTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ExplicitArchitecture().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
