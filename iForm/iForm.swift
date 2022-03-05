//
//  iForm.swift
//  iForm
//
//  Created by Gwendal on 11/02/2022.
//

import Foundation
import UIKit

public typealias Action = ()->()

public class iForm {
    public init() {}
 
    @objc func buttonClicked() {
        print("button clicked")
    }
    
    public func addSignInForm() -> UIView {
        let view = UIView()
        
        let emailTextField = iFormTextFieldItem(placeholder: "Email")
        emailTextField.setConstraints(Constraints(horizontal: 0, vertical: 0, width: 200, height: 30))
        emailTextField.setBackgroundColor(.green)

        let passwordTextField = iFormTextFieldItem(placeholder: "Mot de passe")
        passwordTextField.setConstraints(Constraints(horizontal: 0, vertical: 50, width: 200, height: 30))
        
        
        let loginButton = iFormButtonItem(text: "Se connecter", textColor: .blue, backgroundColor: .red, action: {
            self.buttonClicked()
        })
        loginButton.setConstraints(Constraints(horizontal: 0, vertical: 150, width: 200, height: 50))
        
        
        emailTextField.display(on: view)
        passwordTextField.display(on: view)
        loginButton.display(on: view)
        
        return view
        
    }
    
}
