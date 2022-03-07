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
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
    
        continueAfterFailure = false
        app.launch()
        
    }


    func testSignInFormIsDisplayed() throws {
        let view = UIView()
        let signInForm = form.initSignInForm()
        form.display(signInForm, on: view)
        
        XCTAssert(app.staticTexts["Email"].exists)
        XCTAssert(app.staticTexts["Password"].exists)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
