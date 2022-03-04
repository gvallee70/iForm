//
//  iForm.swift
//  iForm
//
//  Created by Gwendal on 11/02/2022.
//

import Foundation
import UIKit

typealias Action = ()->()

public class iForm {
    public init() {}
 
    public func addSignInForm() -> UIView {
        let view = UIView()
        
        let emailTextField = iFormTextFieldItem(placeholder: "Email")
        emailTextField.setConstraints(Constraints(20, 20, 100, 20))
        emailTextField.setBackgroundColor(.green)

        let passwordTextField = iFormTextFieldItem(placeholder: "Mot de passe")
        passwordTextField.setConstraints(Constraints(20, 20, 100, 20))
        let loginButton = UIButton()
        
        emailTextField.display(on: view)
        passwordTextField.display(on: view)
        
        return view
        
    }
    
}
