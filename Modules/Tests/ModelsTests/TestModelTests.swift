@testable import Models
import TestExtensions
import XCTest

final class TestModelTests: XCTestCase {

  func test_smoke() {
    XCTAssertEqual([1, 2, 3], [1, 2, 3])
  }
}
