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
    
    public func display() -> UITextField{
        self.textField                   = UITextField(frame: CGRect(x: constraints!.getX(), y: constraints!.getY(), width: dimensions!.getWidth(), height: dimensions!.getHeight()));
        self.textField.placeholder       = self.placeholder
        self.textField.text              = self.text
        self.textField.textContentType   = self.contentType?.rawValue
        self.textField.textColor         = self.textColor
        self.textField.backgroundColor   = self.backgroundColor
    
        if let keyboardType = self.keyboardType {
            self.textField.keyboardType = keyboardType.rawValue
        }
        return textField
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

