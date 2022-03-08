//
//  iFormTextFieldItem.swift
//  iForm
//
//  Created by Gwendal on 11/02/2022.
//

import Foundation
import UIKit

public class iFormTextFieldItem: UITextField, iFormDelegate {
    public private(set) var textField: UITextField = UITextField()
    
    public init(
        frame: CGRect = CGRect(x: 0, y: 0, width: 200, height: 50),
        placeholder: String = "",
        text: String = "",
        textColor: UIColor = UIColor.black,
        backgroundColor: UIColor = UIColor.lightGray,
        contentType: iFormTextFieldContentType = .normal,
        keyboardType: iFormTextFieldKeyboardType = .normal) {
            super.init(frame: frame)
            
            self.textField = UITextField(frame: frame)
            
            self.setText(text)
            self.setTextColor(textColor)
            self.setPlaceholder(placeholder)
            self.setBackgroundColor(backgroundColor)
            self.setKeyboardType(keyboardType)
            self.setTextContentType(contentType)
            
            //Styling textField default layer
            self.textField.addLeftPadding(paddingValue: 10.0)
           
        }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
        
    public func setPlaceholder(_ placeholder: String) {
        self.textField.placeholder = placeholder
    }
    
    
    public func setTextContentType(_ contentType: iFormTextFieldContentType) {
        self.textField.textContentType = contentType.rawValue
    }
    
    public func setKeyboardType(_ keyboardType: iFormTextFieldKeyboardType) {
        self.textField.keyboardType = keyboardType.rawValue
    }
    
    //iForm delegate
    
    public func display(on view: UIView, withConstraints constraints: Constraints = Constraints(horizontal: 0, vertical: 0, width: 200, height: 20)) {
        
        view.addSubview(self.textField)
        self.setConstraints(parentView: view, constraints)
           
    }
    
    public func setText(_ text: String) {
        self.textField.text = text
    }
    
    public func setTextColor(_ color: UIColor) {
        self.textField.textColor = color
    }
    
    public func setBackgroundColor(_ color: UIColor) {
        self.textField.backgroundColor = color
    }
    
    public func setBorderRadius(_ radius: CGFloat) {
        self.textField.layer.cornerRadius = radius
    }
    
    
    public func setConstraints(parentView: UIView, _ constraints: Constraints) {
        self.textField.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalConstraint = NSLayoutConstraint(item: self.textField, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentView, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: constraints.getHorizontal())
        let verticalConstraint = NSLayoutConstraint(item: self.textField, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentView, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: constraints.getVertical())
        let widthConstraint = NSLayoutConstraint(item: self.textField, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: constraints.getWidth())
        let heightConstraint = NSLayoutConstraint(item: self.textField, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: constraints.getHeight())
        
        parentView.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
    }
 
}

extension UITextField {
    func addLeftPadding(paddingValue : CGFloat){
        let padding = UIView(frame : CGRect(x: 0, y: 0, width: paddingValue, height: self.frame.size.height))
        self.leftView = padding
        self.leftViewMode = .always
    }
    
    func addRightPadding(paddingValue : CGFloat){
        let padding = UIView(frame : CGRect(x: 0, y: 0, width: paddingValue, height: self.frame.size.height))
        self.rightView = padding
        self.leftViewMode = .always
    }
}

