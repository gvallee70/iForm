//
//  iFormTextFieldItem.swift
//  iForm
//
//  Created by Gwendal on 11/02/2022.
//

import Foundation
import UIKit

public class iFormTextFieldItem: iFormDelegate {
    //from iFormDelegate
    public var text: String?
    public var textColor: UIColor?
    public var backgroundColor: UIColor?
    public var constraints: Constraints?
    
    private var textField: UITextField = UITextField()
    private var placeholder: String?
    private var contentType: iFormTextFieldContentType?
    private var keyboardType: iFormTextFieldKeyboardType?
    
    public init(
        placeholder: String? = "",
        text: String? = "",
        textColor: UIColor? = UIColor.black,
        backgroundColor: UIColor? = UIColor.lightGray,
        constraints: Constraints? = Constraints(horizontal: 0, vertical: 0, width: 200, height: 20),
        contentType: iFormTextFieldContentType? = .normal,
        keyboardType: iFormTextFieldKeyboardType? = .normal) {
            self.text            = text
            self.textColor       = textColor
            self.backgroundColor = backgroundColor
            self.constraints     = constraints
            self.placeholder     = placeholder
            self.contentType     = contentType
            self.keyboardType    = keyboardType
    }
    
    public func display(on view: UIView) {
        self.textField = UITextField(frame: CGRect(x: (constraints!.getHorizontal()), y: constraints!.getVertical(), width: constraints!.getWidth()!, height: constraints!.getHeight()!))
        
        self.textField.placeholder       = self.placeholder
        self.textField.text              = self.text
        self.textField.textContentType   = self.contentType?.rawValue
        self.textField.textColor         = self.textColor
        self.textField.backgroundColor   = self.backgroundColor
        
        if let keyboardType = self.keyboardType {
            self.textField.keyboardType = keyboardType.rawValue
        }

        view.addSubview(self.textField)
        self.textField.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalConstraint = NSLayoutConstraint(item: self.textField, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: self.constraints!.getHorizontal())
        let verticalConstraint = NSLayoutConstraint(item: self.textField, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: self.constraints!.getVertical())
        let widthConstraint = NSLayoutConstraint(item: self.textField, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.constraints!.getWidth()!)
        let heightConstraint = NSLayoutConstraint(item: self.textField, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.constraints!.getHeight()!)
        
        view.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
           
    }
        
    public func setPlaceholder(_ placeholder: String) {
        self.placeholder = placeholder
    }
    
    
    public func setTextContentType(_ contentType: iFormTextFieldContentType) {
        self.contentType = contentType
    }
    
    public func setKeyboardType(_ keyboardType: iFormTextFieldKeyboardType) {
        self.keyboardType = keyboardType
    }
    
    public func setText(_ text: String) {
        self.text = text
    }
    
    public func setTextColor(_ color: UIColor) {
        self.textColor = color
    }
    
    public func setBackgroundColor(_ color: UIColor) {
        self.backgroundColor = color
    }
    
    public func setConstraints(_ constraints: Constraints) {
        self.constraints = constraints
    }
    
}

