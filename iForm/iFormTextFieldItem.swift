//
//  iFormTextFieldItem.swift
//  iForm
//
//  Created by Gwendal on 11/02/2022.
//

import Foundation
import UIKit

public enum iFormTextFieldType: RawRepresentable {
    case normal
    case phoneNumber
    case email
    case password

    public typealias RawValue = UITextContentType
    public var rawValue: RawValue {
        switch self {
        case .normal: return UITextContentType.name
        case .password: return UITextContentType.password
        case .email: return UITextContentType.emailAddress
        case .phoneNumber: return UITextContentType.telephoneNumber
        }
        
    }
    public init?(rawValue: RawValue) {
        switch rawValue {
        case UITextContentType.name: self = .normal
        case UITextContentType.password: self = .password
        case UITextContentType.emailAddress: self = .email
        case UITextContentType.telephoneNumber: self = .phoneNumber
        default: return nil
        }
    }
}


public class iFormTextFieldItem {
    public var placeholder: String = ""
    public var text: String = ""
    public var type: iFormTextFieldType

    public init(placeholder: String, text: String, type: iFormTextFieldType){
        
        
        self.placeholder = placeholder
        self.text = text
        self.type = type
        
    }
    
    public func addView() -> UITextField{
        let textField               = UITextField(frame: CGRect(x: 200, y: 200, width: 200, height: 30));
        textField.placeholder       = self.placeholder
        textField.text              = self.text
        //textField.keyboard   = self.type
        
        return textField
    }

}

