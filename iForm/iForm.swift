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
    
    func buttonClicked() {
        print("button clicked")
    }
    
    public func addSignInForm(parentView : UIView, actionToPerform : UIAction) -> UIView {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: parentView.frame.size.width, height: parentView.frame.size.height))
        
        let emailTextField = iFormTextFieldItem(placeholder: "Email")
        emailTextField.setConstraints(Constraints(horizontal: 0, vertical: 0, width: 200, height: 30))
        emailTextField.setBackgroundColor(.white)

        let passwordTextField = iFormTextFieldItem(placeholder: "Password")
        passwordTextField.setConstraints(Constraints(horizontal: 0, vertical: 50, width: 200, height: 30))
        passwordTextField.setBackgroundColor(.white)
        
        let loginButton = iFormButtonItem(text: "Sign in", textColor: .darkGray, backgroundColor: .lightGray, action: actionToPerform)
        
        loginButton.setConstraints(Constraints(horizontal: 0, vertical: 150, width: 200, height: 30))
        
        emailTextField.display(on: view)
        passwordTextField.display(on: view)
        loginButton.display(on: view)
        
        return view
        
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
