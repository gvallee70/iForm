//
//  iForm.swift
//  iForm
//
//  Created by Gwendal on 11/02/2022.
//

import UIKit

@available(iOS 14.0, *)
public class iForm {
    public private(set) var signInForm   = SignInForm()
    
    public init() {}
    
    public func initSignInForm(
        actionToPerform : UIAction = UIAction { _ in },
        textfieldStyle : UITextFieldStyle = UITextFieldStyle(inputRadius: 5, padding: 10, backgroundColor: .white, textColor: .darkGray, tintColor: .black, placeholderColor: .darkGray),
        buttonStyle : UIButtonStyle = UIButtonStyle(inputRadius: 5, backgroundColor: .systemBlue, textColor: .white, tintColor: .white, borderColor : .white, borderWidth : 1.0)
    ) -> SignInForm {
        self.signInForm.emailTextField = self.initTextField(
            placeholder: "Email",
            contentType: .email,
            keyboardType: .email,
            textFieldStyle: textfieldStyle
        )

        self.signInForm.passwordTextField = self.initTextField(
            placeholder: "Password",
            contentType: .password,
            textFieldStyle: textfieldStyle
        )

        
        self.signInForm.signInButton = self.initButton(
            text: "Sign In",
            buttonStyle: buttonStyle,
            action: actionToPerform
        )
        
        self.signInForm.emailTextField.display(on: self.signInForm, withConstraints: Constraints(horizontal: 0, vertical: 0, width: 200, height: 30))
        self.signInForm.passwordTextField.display(on: self.signInForm, withConstraints: Constraints(horizontal: 0, vertical: 50, width: 200, height: 30))
        self.signInForm.signInButton.display(on: self.signInForm, withConstraints: Constraints(horizontal: 0, vertical: 150, width: 200, height: 60))

        return signInForm
    }
    
    
    public func initTextField(
        placeholder: String = "",
        text: String = "",
        contentType: iFormTextFieldContentType = .normal,
        keyboardType: iFormTextFieldKeyboardType = .normal,
        textFieldStyle : UITextFieldStyle = UITextFieldStyle(inputRadius: 5, padding: 10, backgroundColor: .white, textColor: .darkGray, tintColor: .white, placeholderColor : .darkGray)
    ) -> iFormTextFieldItem {
    
        return iFormTextFieldItem(
            placeholder: placeholder,
            text: text,
            contentType: contentType,
            keyboardType: keyboardType,
            textFieldStyle: textFieldStyle
        )
        
    }
    
    
    
    public func initButton(
        text: String = "",
        buttonStyle : UIButtonStyle = UIButtonStyle(inputRadius: 5, backgroundColor: .systemBlue, textColor: .white, tintColor: .white, borderColor : .white, borderWidth : 1.0),
        action: UIAction = UIAction { _ in }
    ) -> iFormButtonItem {
        return iFormButtonItem(
            text: text,
            buttonStyle: buttonStyle,
            action: action
        )
    }
    
    
    public func display(
        _ view: UIView,
        on parentView: UIView,
        withConstraints constraints: Constraints = Constraints(horizontal: 0, vertical: 0, width: 0, height: 0)
    ) {
        parentView.addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = NSLayoutConstraint(item: view, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentView, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: constraints.getHorizontal())
        
        let verticalConstraint = NSLayoutConstraint(item: view, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentView, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: constraints.getVertical())
        
        let widthConstraint = NSLayoutConstraint(item: view, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentView, attribute: .width, multiplier: 1, constant: constraints.getWidth())
        
        let heightConstraint = NSLayoutConstraint(item: view, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentView, attribute: .height, multiplier: 1, constant: constraints.getHeight())
        

        parentView.addConstraints([horizontalConstraint, verticalConstraint,widthConstraint,heightConstraint])
    }
    
    
    public func getTextFieldsValues(from textFields : [UITextField]) -> [String:String] {
        var textfieldsValues = [String:String]()
        
        for textField in textFields {
            if let placeHolder = textField.placeholder {
                if(!placeHolder.isEmpty){
                    textfieldsValues[placeHolder] = textField.text
                }
            }
        }
        return textfieldsValues
    }
    
    public func getAllTextFields(from view : UIView) -> [UITextField] {
        view.subviews.compactMap{ (view) -> [UITextField]? in
            if view is UITextField {
                return [(view as! UITextField)]
            } else {
                return getAllTextFields(from: view)
            }
        }.flatMap({$0})
    }
    
    
}
