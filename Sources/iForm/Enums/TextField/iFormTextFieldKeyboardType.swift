//
//  iFormTextFieldKeyboardType.swift
//  iForm
//
//  Created by Gwendal on 04/03/2022.
//

import Foundation
import UIKit

public enum iFormTextFieldKeyboardType: RawRepresentable {
    case normal
    case phone
    case email

    public typealias RawValue = UIKeyboardType
    public var rawValue: RawValue {
        switch self {
        case .normal: return UIKeyboardType.default
        case .email: return UIKeyboardType.emailAddress
        case .phone: return UIKeyboardType.phonePad
        }
        
    }
    public init?(rawValue: RawValue) {
        switch rawValue {
        case UIKeyboardType.default: self = .normal
        case UIKeyboardType.emailAddress: self = .email
        case UIKeyboardType.phonePad: self = .phone
        default: return nil
        }
    }
}
