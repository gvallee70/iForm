//
//  iForm.swift
//  iForm
//
//  Created by Gwendal on 11/02/2022.
//

import Foundation
import UIKit

public typealias Action = ()->()

@available(iOS 14.0, *)
public class iForm {
    
    public init() {}

    public func initSignInForm(
        on parentView : UIView,
        withConstraints constraints: Constraints = Constraints(horizontal: 0, vertical: 0, width: 0, height: 0),
        actionToPerform : UIAction = UIAction { _ in }
    ) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: parentView.frame.size.width, height: parentView.frame.size.height))
        
        let emailTextField = self.initTextField(
            placeholder: "Email",
            backgroundColor: .white,
            constraints: Constraints(horizontal: 0, vertical: 0, width: 200, height: 30),
            contentType: .email,
            keyboardType: .email
        )

        let passwordTextField = self.initTextField(
            placeholder: "Password",
            backgroundColor: .white,
            constraints: Constraints(horizontal: 0, vertical: 50, width: 200, height: 30),
            contentType: .password
        )

        
        let signInButton = self.initButton(
            text: "Sign In",
            textColor: .darkGray,
            backgroundColor: .lightGray,
            constraints: Constraints(horizontal: 0, vertical: 150, width: 200, height: 30),
            action: actionToPerform
        )
        
        emailTextField.display(on: view)
        passwordTextField.display(on: view)
        signInButton.display(on: view)
        
        parentView.addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = NSLayoutConstraint(item: view, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentView, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: constraints.getHorizontal())
        
        let verticalConstraint = NSLayoutConstraint(item: view, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentView, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: constraints.getVertical())
        
        let widthConstraint = NSLayoutConstraint(item: view, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentView, attribute: .width, multiplier: 1, constant: constraints.getWidth())
        
        let heightConstraint = NSLayoutConstraint(item: view, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentView, attribute: .height, multiplier: 1, constant: constraints.getHeight())
        

        parentView.addConstraints([horizontalConstraint, verticalConstraint,widthConstraint,heightConstraint])
        
        return view
    }
    
    
    public func initTextField(
        placeholder: String? = "",
        text: String? = "",
        textColor: UIColor? = .darkText,
        backgroundColor: UIColor? = .lightGray,
        constraints: Constraints = Constraints(horizontal: 0, vertical: 30, width: 200, height: 30),
        contentType: iFormTextFieldContentType? = .normal,
        keyboardType: iFormTextFieldKeyboardType? = .normal
    ) -> iFormTextFieldItem {
        return iFormTextFieldItem(
            placeholder: placeholder,
            text: text,
            textColor: textColor,
            backgroundColor: backgroundColor,
            constraints: constraints,
            contentType: contentType,
            keyboardType: keyboardType
        )
    }
    
    
    
    public func initButton(
        text: String? = "",
        textColor: UIColor? = .darkText,
        backgroundColor: UIColor? = .lightGray,
        constraints: Constraints? = Constraints(horizontal: 0, vertical: 40, width: 200, height: 50),
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
