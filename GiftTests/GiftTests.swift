import XCTest
import Gift
import LlamaKit

class GiftTests: XCTestCase {
  func testExample() {
    let fileURL = NSURL(fileURLWithPath: "/Users/bgesiak/Desktop/RepositoryTest")
    let repository = initializeEmptyRepository(fileURL!, RepositoryOptions())
    AssertSuccess(
      repository.flatMap { $0.gitDirectoryURL }.map { $0.path! },
      "/Users/bgesiak/Desktop/RepositoryTest/.git"
    )

    AssertSuccess(repository.flatMap { $0.index }.map { $0.entryCount }, 0)
  }
}
