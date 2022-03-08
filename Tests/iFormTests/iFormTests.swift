//
//  iFormTests.swift
//  iFormTests
//
//  Created by Gwendal on 11/02/2022.
//

import XCTest
@testable import iForm

@available(iOS 14.0, *)
final class iFormTests: XCTestCase {
    let form = iForm()

    override func setUp() {
        super.setUp()
    
        continueAfterFailure = false
    }

    //SignInForm TEST
    func testNumberOfViewsOfSignInForm() throws {
        let signInForm = form.initSignInForm()
        
        XCTAssertNotEqual(signInForm.subviews.count, 1)
        XCTAssertEqual(signInForm.subviews.count, 3)
    }
    
    
    //iFormTextFieldItem TEST
    func testSetPlaceholderMethod() throws {
        let textfield = form.initTextField(placeholder: "TestFalse")
        textfield.setPlaceholder("Test")
        XCTAssertFalse(textfield.getPlaceholder() == "TestFalse")
        XCTAssertTrue(textfield.getPlaceholder() == "Test")
    }
    
    func testSetTextColorMethod() throws {
        let textfield = form.initTextField()
        textfield.setTextColor(.red)
        
        XCTAssertFalse(textfield.getTextColor() == .blue)
        XCTAssertTrue(textfield.getTextColor() == .red)
    }
    
    
    func testSetBorderRadiusMethod() throws {
        let textfield = form.initTextField()
        textfield.setBorderRadius(CGFloat(10))
        
        XCTAssertFalse(textfield.getBorderRadius() == CGFloat(15))
        XCTAssertTrue(textfield.getBorderRadius() == CGFloat(10))
    }
    
    func testSetKeyboardTypeMethod() throws {
        let textfield = form.initTextField()
        textfield.setKeyboardType(.email)
        
        XCTAssertFalse(textfield.getKeyboardType() == iFormTextFieldKeyboardType.phone.rawValue)
        XCTAssertTrue(textfield.getKeyboardType() == iFormTextFieldKeyboardType.email.rawValue)
    }
    
    func testSetTextContentTypeMethod() throws {
        let textfield = form.initTextField()
        textfield.setTextContentType(.email)
        
        XCTAssertFalse(textfield.getTextContentType() == iFormTextFieldContentType.phoneNumber.rawValue)
        XCTAssertTrue(textfield.getTextContentType() == iFormTextFieldContentType.email.rawValue)
    }
    
    
    //iFormButton
    func testSetTextMethod() throws {
        let button = form.initButton(text: "TestFalse")
        button.setText("Test")

        XCTAssertFalse(button.getText() == "TestFalse")
        XCTAssertTrue(button.getText() == "Test")
    }
    
    
    func testSetBackgroundColorMethod() throws {
        let button = form.initButton()
        button.setBackgroundColor(.red)
        
        XCTAssertFalse(button.getBackgroundColor() == .blue)
        XCTAssertTrue(button.getBackgroundColor() == .red)
    }

    func testSetBorderColorMethod() throws {
        let button = form.initButton()
        button.setBorderColor(.red)
        
        XCTAssertFalse(button.getBorderColor() == UIColor.blue.cgColor)
        XCTAssertTrue(button.getBorderColor() == UIColor.red.cgColor)
    }

    func testSetBorderWidthMethod() throws {
        let button = form.initButton()
        button.setBorderWidth(CGFloat(5))
        
        XCTAssertFalse(button.getBorderWidth() == CGFloat(10))
        XCTAssertTrue(button.getBorderWidth() == CGFloat(5))
    }
}
