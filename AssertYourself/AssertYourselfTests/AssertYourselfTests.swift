//
//  AssertYourselfTests.swift
//  AssertYourselfTests
//
//  Created by Andreas Lüdemann on 16/04/2021.
//

import XCTest
@testable import AssertYourself

struct SimpleStruct: CustomStringConvertible {
    let x: Int
    let y: Int
    
    var description: String { "(\(x), \(y))"}
}

class AssertYourselfTests: XCTestCase {
    func test_fail_withInterpolatedMessage() {
        let success = false
        XCTAssertTrue(success)
    }
    
    func test_assertNil() {
        let optionalValue: SimpleStruct? = SimpleStruct(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }
    
    func test_assertEqual() {
        let actual = "actual"
        XCTAssertEqual(actual, "expected")
    }
    
    func test_assertEqual_withOptional() {
        let result: String? = "foo"
        XCTAssertEqual(result, "bar")
    }
    
    func test_floatingPointDanger() {
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3, accuracy: 0.0001)
    }
}
