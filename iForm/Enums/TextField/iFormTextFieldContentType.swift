//
//  iFormTextFieldContentType.swift
//  iForm
//
//  Created by Gwendal on 04/03/2022.
//

import Foundation
import UIKit

public enum iFormTextFieldContentType: RawRepresentable {
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
