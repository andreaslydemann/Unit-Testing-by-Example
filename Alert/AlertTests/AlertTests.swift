//
//  AlertTests.swift
//  AlertTests
//
//  Created by Andreas Lüdemann on 24/04/2021.
//

import XCTest
import ViewControllerPresentationSpy
@testable import Alert

class AlertTests: XCTestCase {
    private var sut: ViewController!
    private var alertVerifier: AlertVerifier!
    
    override func setUp() {
        super.setUp()
        alertVerifier = AlertVerifier()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
    }
    override func tearDown() {
        alertVerifier = nil
        sut = nil
        super.tearDown()
    }
    
    func test_tappingButton_shouldShowAlert() {
        alertVerifier.verify(
            title: "Do the thing?",
            message: "Let us know if you want to do the thing.",
            animated: true,
            actions: [
                .cancel("Cancel"),
                .default("OK")
            ],
            presentingViewController: sut
        )
        XCTAssertEqual(alertVerifier.preferredAction?.title, "OK", "preferred action")
    }
    
    func test_executeAlertAction_withOKButton() throws {
        tap(sut.button)
        try alertVerifier.executeAction(forButton: "OK")
    }
}
