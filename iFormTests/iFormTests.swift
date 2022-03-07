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
        
        XCTAssertNotEqual(signInForm.subviews.count, 1)
        XCTAssertEqual(signInForm.subviews.count, 3)
    }
    
    func testSetPlaceholderMethod() throws {
        let textfield = form.initTextField(placeholder: "TestFalse")
        textfield.setPlaceholder("Test")
        
        XCTAssertFalse(textfield.placeholderText == "TestFalse")
        XCTAssertTrue(textfield.placeholderText == "Test")
    }

    func testSetTextMethod() throws {
        let button = form.initButton(text: "TestFalse")
        button.setText("Test")
        
        XCTAssertFalse(button.txt == "TestFalse")
        XCTAssertTrue(button.txt == "Test")
    }
    
    
    func testSetBackgroundColorMethod() throws {
        let button = form.initButton(backgroundColor: .blue)
        button.setBackgroundColor(.red)
        
        XCTAssertFalse(button.bcgColor == .blue)
        XCTAssertTrue(button.bcgColor == .red)
    }
    
    func testSetTextColorMethod() throws {
        let textfield = form.initTextField(textColor: .blue)
        textfield.setTextColor(.red)
        
        XCTAssertFalse(textfield.txtColor == .blue)
        XCTAssertTrue(textfield.txtColor == .red)
    }
    

}
