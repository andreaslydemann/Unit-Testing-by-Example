//
//  MyClassTests.swift
//  LifeCycleTests
//
//  Created by Andreas Lüdemann on 17/04/2021.
//

import XCTest
@testable import LifeCycle

class MyClassTests: XCTestCase {
    private var sut: MyClass!
    
    override func setUp() {
        super.setUp()
        sut = MyClass()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_methodOne() {
        let sut = MyClass()
        
        sut.methodOne()
    }
    
    func test_methodTwo() {
        let sut = MyClass()
        
        sut.methodTwo()
    }
}
