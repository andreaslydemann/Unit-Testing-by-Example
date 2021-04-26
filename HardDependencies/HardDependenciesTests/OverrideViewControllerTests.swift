//
//  OverrideViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Andreas Lüdemann on 22/04/2021.
//

import XCTest
@testable import HardDependencies

private class TestableOverrideViewController: OverrideViewController {
    override func analytics() -> Analytics { Analytics() }
}

class OverrideViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let sut = TestableOverrideViewController()
        
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
