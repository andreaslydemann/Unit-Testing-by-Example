//
//  InstancePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by Andreas Lüdemann on 22/04/2021.
//

import XCTest
@testable import HardDependencies

class InstancePropertyViewControllerTests: XCTestCase {
    func test_newViewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: InstancePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: InstancePropertyViewController.self))
        sut.analytics = Analytics()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
