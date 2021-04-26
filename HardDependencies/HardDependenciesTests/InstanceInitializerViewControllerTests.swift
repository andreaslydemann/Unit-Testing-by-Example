//
//  InstanceInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Andreas Lüdemann on 22/04/2021.
//

import XCTest
@testable import HardDependencies

class InstanceInitializerViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let sut = InstanceInitializerViewController(analytics: Analytics())
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
