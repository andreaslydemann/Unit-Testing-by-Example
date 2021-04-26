//
//  MySingletonViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Andreas Lüdemann on 21/04/2021.
//

import XCTest
@testable import HardDependencies

class MySingletonViewControllerTests: XCTestCase {
    override class func setUp() {
        super.setUp()
        MySingletonAnalytics.stubbedInstance = MySingletonAnalytics()
    }
    
    override class func tearDown() {
        MySingletonAnalytics.stubbedInstance = nil
        super.tearDown()
    }
    
    func test_viewDidAppear() {
        let sut = MySingletonViewController()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
