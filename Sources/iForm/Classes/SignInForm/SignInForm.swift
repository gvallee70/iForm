//
//  SignInForm.swift
//  iForm
//
//  Created by Gwendal on 07/03/2022.
//

import UIKit

@available(iOS 14.0, *)
public class SignInForm: UIView {
    public internal(set) var emailTextField: iFormTextFieldItem = iFormTextFieldItem()
    public internal(set) var passwordTextField: iFormTextFieldItem = iFormTextFieldItem()
    public internal(set) var signInButton: iFormButtonItem = iFormButtonItem()
    
    public init(
        frame: CGRect = CGRect(x: 0, y: 0, width: 0, height: 0),
        emailTextField: iFormTextFieldItem = iFormTextFieldItem(),
        passwordTextField: iFormTextFieldItem = iFormTextFieldItem(),
        signInButton: iFormButtonItem = iFormButtonItem()
    ){
        super.init(frame: frame)
        self.emailTextField = emailTextField
        self.passwordTextField = passwordTextField
        self.signInButton = signInButton
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
