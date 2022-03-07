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
    
    @objc
    func buttonClicked() {
        print("button clicked")
    }
    
    public func addSignInForm(parentView : UIView) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: parentView.frame.size.width, height: parentView.frame.size.height))
        
        let emailTextField = iFormTextFieldItem(placeholder: "Email")
        emailTextField.setConstraints(Constraints(horizontal: 0, vertical: 0, width: 200, height: 30))
        emailTextField.setBackgroundColor(.green)

        let passwordTextField = iFormTextFieldItem(placeholder: "Mot de passe")
        passwordTextField.setConstraints(Constraints(horizontal: 0, vertical: 50, width: 200, height: 30))
        
        
        let loginButton = iFormButtonItem(text: "Se connecter", textColor: .blue, backgroundColor: .red, action: UIAction() { _ in
            self.buttonClicked()
        })
        loginButton.setConstraints(Constraints(horizontal: 0, vertical: 150, width: 200, height: 50))

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
        constraints: Constraints? = Constraints(horizontal: 0, vertical: 0, width: 200, height: 20),
        contentType: iFormTextFieldContentType? = .normal,
        keyboardType: iFormTextFieldKeyboardType? = .normal
    ) -> UIView {
        let textField = iFormTextFieldItem(placeholder: placeholder, text: text, textColor: textColor, backgroundColor: backgroundColor, constraints: constraints, contentType: contentType, keyboardType: keyboardType)
        let view = UIView(frame: CGRect(x: textField.constraints!.getVertical(), y: textField.constraints!.getHorizontal(), width: textField.constraints!.getWidth()!, height: textField.constraints!.getHeight()!))
       
        return view
    }
    
    public func initButton(
        text: String? = "",
        textColor: UIColor? = .darkText,
        backgroundColor: UIColor? = .lightGray,
        constraints: Constraints? = Constraints(horizontal: 0, vertical: 0, width: 200, height: 50),
        action: UIAction
    ) -> iFormButtonItem {
        return iFormButtonItem(text: text, textColor: textColor, backgroundColor: backgroundColor, constraints: constraints, action: action)
    }
    
}
