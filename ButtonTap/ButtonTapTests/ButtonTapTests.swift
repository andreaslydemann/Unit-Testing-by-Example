//
//  ButtonTapTests.swift
//  ButtonTapTests
//
//  Created by Andreas Lüdemann on 23/04/2021.
//

import XCTest
@testable import ButtonTap

class ButtonTapTests: XCTestCase {
    func test_tappingButton() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        
        tap(sut.button)
    }
}
