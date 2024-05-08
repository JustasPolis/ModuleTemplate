@testable import Models
import TestExtensions
import XCTest

final class TestModelTests: XCTestCase {

  func test_smoke() {
    XCTAssertEqual([1, 2, 3], [1, 2, 3])
  }

  func test_something_else() {
    XCTAssertEqual(true, true)
  }
}
