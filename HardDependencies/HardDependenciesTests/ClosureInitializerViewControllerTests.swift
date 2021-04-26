//
//  ClosureInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Andreas Lüdemann on 22/04/2021.
//

import XCTest
@testable import HardDependencies

class ClosureInitializerViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let sut = ClosureInitializerViewController { Analytics() }
        
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
    }
}
