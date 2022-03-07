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
    
    public func initSignInForm(on parentView : UIView, actionToPerform : UIAction) -> UIView {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: parentView.frame.size.width, height: parentView.frame.size.height))
        
        let emailTextField = self.initTextField(
            placeholder: "Email",
            backgroundColor: .white,
            constraints: Constraints(horizontal: 0, vertical: 0, width: 200, height: 30)
        )

        let passwordTextField = self.initTextField(
            placeholder: "Mot de passe",
            backgroundColor: .white,
            constraints: Constraints(horizontal: 0, vertical: 50, width: 200, height: 30)
        )
        
        let loginButton = iFormButtonItem(
            text: "Se connecter",
            textColor: .darkGray,
            backgroundColor: .lightGray,
            constraints: Constraints(horizontal: 0, vertical: 150, width: 200, height: 30),
            action: actionToPerform
        )
        
        emailTextField.display(on: view)
        passwordTextField.display(on: view)
        loginButton.display(on: view)
        
        return view
        
    }
    
    
    public func initTextField(
        placeholder: String? = "",
        text: String? = "",
        textColor: UIColor? = .darkText,
        backgroundColor: UIColor? = .lightGray,
        constraints: Constraints? = Constraints(horizontal: 0, vertical: 30, width: 200, height: 30),
        contentType: iFormTextFieldContentType? = .normal,
        keyboardType: iFormTextFieldKeyboardType? = .normal
    ) -> iFormTextFieldItem {
        return iFormTextFieldItem(frame: CGRect(x: constraints!.getHorizontal(), y: constraints!.getVertical(), width: constraints!.getWidth()!, height: constraints!.getHeight()!), placeholder: placeholder, text: text, textColor: textColor, backgroundColor: backgroundColor, constraints: constraints, contentType: contentType, keyboardType: keyboardType)
    }
    
    public func initButton(
        text: String? = "",
        textColor: UIColor? = .darkText,
        backgroundColor: UIColor? = .lightGray,
        constraints: Constraints? = Constraints(horizontal: 0, vertical: 40, width: 200, height: 50),
        action: UIAction
    ) -> iFormButtonItem {
        return iFormButtonItem(text: text, textColor: textColor, backgroundColor: backgroundColor, constraints: constraints, action: action)
    }
    
    public func getTextFieldsValues(values : [UITextField]) -> [String:String] {
        var textfieldsValues = [String:String]()
        
        for txtValue in values {
            if let placeHolder = txtValue.placeholder {
                if(!placeHolder.isEmpty){
                    textfieldsValues[placeHolder] = txtValue.text
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
