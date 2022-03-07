//
//  iFormTextFieldItem.swift
//  iForm
//
//  Created by Gwendal on 11/02/2022.
//

import Foundation
import UIKit

public class iFormTextFieldItem: UITextField, iFormDelegate {
    //from iFormDelegate
    public private(set) var txt: String?
    public private(set) var txtColor: UIColor?
    public private(set) var bcgColor: UIColor? {
        didSet {
            self.textField.backgroundColor = self.bcgColor
        }
    }
    public private(set) var constr: Constraints?
    
    public private(set) var textField: UITextField = UITextField()
    public private(set) var placeholderText: String?
    public private(set) var contentType: iFormTextFieldContentType?
    public private(set) var keybType: iFormTextFieldKeyboardType?
    
    public init(
        frame: CGRect = CGRect(x: 0, y: 0, width: 200, height: 50),
        placeholder: String? = "",
        text: String? = "",
        textColor: UIColor? = UIColor.black,
        backgroundColor: UIColor? = UIColor.lightGray,
        constraints: Constraints = Constraints(horizontal: 0, vertical: 0, width: 200, height: 20),
        contentType: iFormTextFieldContentType? = .normal,
        keyboardType: iFormTextFieldKeyboardType? = .normal) {
            super.init(frame: frame)

            self.txt                = text
            self.txtColor           = textColor
            self.bcgColor           = backgroundColor
            self.constr             = constraints
            self.placeholderText    = placeholder
            self.contentType        = contentType
            self.keybType           = keyboardType
            
            self.textField = UITextField(frame: CGRect(x: (constr!.getHorizontal()), y: constr!.getVertical(), width: constr!.getWidth(), height: constr!.getHeight()))
            
            //Styling textField default layer
            self.textField.layer.cornerRadius   = CGFloat(5.0)
            self.textField.addLeftPadding(paddingValue: 10.0)
            
            self.textField.placeholder          = self.placeholderText
            self.textField.text                 = self.txt
            self.textField.textContentType      = self.contentType?.rawValue
            self.textField.textColor            = self.txtColor
            self.textField.backgroundColor      = self.bcgColor
            
            if let keyboardType = self.keybType {
                self.textField.keyboardType = keyboardType.rawValue
            }
            
        }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    public func display(on view: UIView) {

        view.addSubview(self.textField)

        self.textField.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalConstraint = NSLayoutConstraint(item: self.textField, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: self.constr!.getHorizontal())
        let verticalConstraint = NSLayoutConstraint(item: self.textField, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: self.constr!.getVertical())
        let widthConstraint = NSLayoutConstraint(item: self.textField, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.constr!.getWidth())
        let heightConstraint = NSLayoutConstraint(item: self.textField, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.constr!.getHeight())
        
        view.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
           
    }
    
        
    public func setPlaceholder(_ placeholder: String) {
        self.placeholderText = placeholder
    }
    
    
    public func setTextContentType(_ contentType: iFormTextFieldContentType) {
        self.contentType = contentType
    }
    
    public func setKeyboardType(_ keyboardType: iFormTextFieldKeyboardType) {
        self.keybType = keyboardType
    }
    
    public func setText(_ text: String) {
        self.txt = text
    }
    
    public func setTextColor(_ color: UIColor) {
        self.txtColor = color
    }
    
    public func setBackgroundColor(_ color: UIColor) {
        self.bcgColor = color
    }
    
    public func setConstraints(_ constraints: Constraints) {
        self.constr = constraints
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

