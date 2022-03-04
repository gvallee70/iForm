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
    public var dimensions: Dimensions?
    
    private var textField: UITextField = UITextField()
    private var placeholder: String?
    private var contentType: iFormTextFieldContentType?
    private var keyboardType: iFormTextFieldKeyboardType?
    
    public init(
        placeholder: String? = "",
        text: String? = "",
        textColor: UIColor? = UIColor.black,
        backgroundColor: UIColor? = UIColor.lightGray,
        constraints: Constraints? = Constraints(50, 50),
        dimensions: Dimensions? = Dimensions(30, 200),
        contentType: iFormTextFieldContentType? = .normal,
        keyboardType: iFormTextFieldKeyboardType? = .normal) {
            self.text            = text
            self.textColor       = textColor
            self.backgroundColor = backgroundColor
            self.constraints     = constraints
            self.dimensions      = dimensions
            self.placeholder     = placeholder
            self.contentType     = contentType
            self.keyboardType    = keyboardType
    }
    
    public func display(on view: UIView) {
        self.textField                   = UITextField();
        self.textField.placeholder       = self.placeholder
        self.textField.text              = self.text
        self.textField.textContentType   = self.contentType?.rawValue
        self.textField.textColor         = self.textColor
        self.textField.backgroundColor   = self.backgroundColor
        if let keyboardType = self.keyboardType {
            self.textField.keyboardType = keyboardType.rawValue
        }

        view.addSubview(textField)
        
        let horizontalConstraint = NSLayoutConstraint(item: textField, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: self.constraints!.getHorizontal())
        let verticalConstraint = NSLayoutConstraint(item: textField, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: self.constraints!.getVertical())
        let widthConstraint = NSLayoutConstraint(item: textField, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.constraints!.getWidth()!)
        let heightConstraint = NSLayoutConstraint(item: textField, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.constraints!.getHeight()!)
        
        view.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
           
        view.addSubview(textField)

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
    
    public func setDimensions(_ dimensions: Dimensions) {
        self.dimensions = dimensions
    }
    
    public func setConstraints(_ constraints: Constraints) {
        self.constraints = constraints
    }
    
}

