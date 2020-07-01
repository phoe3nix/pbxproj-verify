import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(pbxproj_verifyTests.allTests),
    ]
}
#endif
