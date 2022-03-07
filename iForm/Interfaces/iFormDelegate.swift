//
//  iFormDelegate.swift
//  iForm
//
//  Created by Gwendal on 04/03/2022.
//

import Foundation
import UIKit


public protocol iFormDelegate {
    var txt: String? { get }
    var txtColor: UIColor? { get }
    var bcgColor: UIColor? { get }
    var constr: Constraints? { get }

    func setText(_ text: String)
    func setTextColor(_ color: UIColor)
    func setBackgroundColor(_ color: UIColor)
    func setConstraints(_ constraints: Constraints)
}
