//
//  ClosurePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Andreas Lüdemann on 22/04/2021.
//

import XCTest
@testable import HardDependencies

class ClosurePropertyViewControllerTests: XCTestCase {
    func test_viewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ClosurePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: ClosurePropertyViewController.self))
        sut.loadViewIfNeeded()
        
        sut.makeAnalytics = { Analytics() }
        
        sut.viewDidAppear(false)
    }
}
