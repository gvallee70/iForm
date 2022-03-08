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
        XCTAssertFalse(textfield.textField.placeholder == "TestFalse")
        XCTAssertTrue(textfield.textField.placeholder == "Test")
    }

    func testSetTextMethod() throws {
        let button = form.initButton(text: "TestFalse")
        button.setText("Test")
        
        XCTAssertFalse(button.titleLabel?.text == "TestFalse")
        XCTAssertTrue(button.titleLabel?.text == "Test")
    }
    
    
    func testSetBackgroundColorMethod() throws {
        let button = form.initButton(backgroundColor: .blue)
        button.setBackgroundColor(.red)
        
        XCTAssertFalse(button.backgroundColor == .blue)
        XCTAssertTrue(button.backgroundColor == .red)
    }
    
    func testSetTextColorMethod() throws {
        let textfield = form.initTextField(textColor: .blue)
        textfield.setTextColor(.red)
        
        XCTAssertFalse(textfield.textColor == .blue)
        XCTAssertTrue(textfield.textColor == .red)
    }
    

}
