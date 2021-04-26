//
//  StoryboardBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by Andreas Lüdemann on 20/04/2021.
//

import XCTest
@testable import LoadViewControllers

class StoryboardBasedViewControllerTests: XCTestCase {
    func test_loading() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut: StoryboardBasedViewController = sb.instantiateViewController(identifier: String(describing: StoryboardBasedViewController.self))
        
        sut.loadViewIfNeeded()
        XCTAssertNotNil(sut.label)
    }
}
