//
//  iFormTests.swift
//  iFormTests
//
//  Created by Gwendal on 11/02/2022.
//

import XCTest
@testable import iForm

class iFormTests: XCTestCase {
    let form = iForm()

    override func setUp() {
        super.setUp()
    
        continueAfterFailure = false
        
        
    }


    func testNumberOfViewsOfSignInForm() throws {
        let signInForm = form.initSignInForm()
        
        XCTAssertEqual(signInForm.subviews.count, 3)
    }

    func testSetTextMethod() throws {
        let button = form.initButton()
        button.setText("Test")
        XCTAssertTrue(button.txt == "Test")
    }

}
