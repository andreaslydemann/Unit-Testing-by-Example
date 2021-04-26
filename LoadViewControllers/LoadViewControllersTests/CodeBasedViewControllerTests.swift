//
//  CodeBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by Andreas Lüdemann on 20/04/2021.
//

import XCTest
@testable import LoadViewControllers

class CodeBasedViewControllerTests: XCTestCase {
    func test_loading() {
        let sut = CodeBasedViewController(data: "DUMMY")
        
        sut.loadViewIfNeeded()
    }
}
