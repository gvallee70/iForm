//
//  iFormDelegate.swift
//  iForm
//
//  Created by Gwendal on 04/03/2022.
//

import Foundation
import UIKit


public protocol iFormDelegate {
    func setText(_ text: String)
    func setTextColor(_ color: UIColor)
    func setBackgroundColor(_ color: UIColor)
    func setConstraints(parentView: UIView, _ constraints: Constraints)
    func setBorderRadius(_ radius: CGFloat)
    func display(on view: UIView, withConstraints constraints: Constraints)
    
    func getText() -> String?
    func getTextColor() -> UIColor
    func getBackgroundColor() -> UIColor?
    func getBorderRadius() -> CGFloat
}
