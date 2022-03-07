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
        textfieldStyle : UITextFieldStyle?,
        buttonStyle : UIButtonStyle?
    ) -> SignInForm {
        self.signInForm.emailTextField = self.initTextField(
            placeholder: "Email",
            backgroundColor: .white,
            contentType: .email,
            keyboardType: .email
        )

        self.signInForm.passwordTextField = self.initTextField(
            placeholder: "Password",
            backgroundColor: .white,
            contentType: .password
        )

        
        self.signInForm.signInButton = self.initButton(
            text: "Sign In",
            textColor: .darkGray,
            backgroundColor: .lightGray,
            constraints: Constraints(horizontal: 0, vertical: 150, width: 200, height: 30),
            action: actionToPerform
        )
        
        self.signInForm.emailTextField.display(on: self.signInForm, withConstraints: Constraints(horizontal: 0, vertical: 0, width: 200, height: 30))
        self.signInForm.passwordTextField.display(on: self.signInForm, withConstraints: Constraints(horizontal: 0, vertical: 50, width: 200, height: 30))
        self.signInForm.signInButton.display(on: self.signInForm)

        return signInForm
    }
    
    
    public func initTextField(
        placeholder: String = "",
        text: String = "",
        textColor: UIColor = .darkText,
        backgroundColor: UIColor = .lightGray,
        contentType: iFormTextFieldContentType = .normal,
        keyboardType: iFormTextFieldKeyboardType = .normal
        textFieldStyle : UITextFieldStyle? = UITextFieldStyle(inputWidth: 250, inputHeight: 30, inputRadius: 5, padding: <#T##Double#>, backgroundColor: .white, textColor: .black, tintColor: .white)
    ) -> iFormTextFieldItem {
        return iFormTextFieldItem(
            placeholder: placeholder,
            text: text,
            textColor: textColor,
            backgroundColor: backgroundColor,
            contentType: contentType,
            keyboardType: keyboardType
        )
    }
    
    
    
    public func initButton(
        text: String? = "",
        textColor: UIColor? = .darkText,
        backgroundColor: UIColor? = .lightGray,
        constraints: Constraints? = Constraints(horizontal: 0, vertical: 40, width: 200, height: 50),
        buttonStyle : UIButtonStyle? = UIButtonStyle(inputWidth: 200.0, inputHeight: 30.0, inputRadius: 5, backgroundColor: .systemBlue, textColor: .white, tintColor: .white),
        action: UIAction = UIAction { _ in }
    ) -> iFormButtonItem {
        return iFormButtonItem(
            frame: CGRect(x: constraints!.getHorizontal(), y: constraints!.getVertical(), width: constraints!.getWidth(), height: constraints!.getHeight()),
            text: text,
            textColor: textColor,
            backgroundColor: backgroundColor,
            constraints: constraints!,
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
