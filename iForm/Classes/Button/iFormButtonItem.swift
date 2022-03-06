//
//  iFormButtonItem.swift
//  iForm
//
//  Created by Gwendal on 05/03/2022.
//

import Foundation
import UIKit

public class iFormButtonItem: iFormDelegate {
    //from iFormDelegate
    public var text: String?
    public var textColor: UIColor?
    public var backgroundColor: UIColor?
    public var constraints: Constraints?
    public var dimensions: Dimensions?
    
    private var button: UIButton = UIButton()
    @objc private var action: UIAction
    
    public init(
        text: String? = "",
        textColor: UIColor? = UIColor.black,
        backgroundColor: UIColor? = UIColor.lightGray,
        constraints: Constraints? = Constraints(horizontal: 0, vertical: 0, width: 100, height: 60),
        action: UIAction) {
            self.text            = text
            self.textColor       = textColor
            self.backgroundColor = backgroundColor
            self.constraints     = constraints
            self.action          = action
    }
    
    @available(iOS 14.0, *)
    public func display(on view: UIView) {
        self.button = UIButton(frame: CGRect(x: (constraints!.getHorizontal()), y: constraints!.getVertical(), width: constraints!.getWidth()!, height: constraints!.getHeight()!),primaryAction: self.action)
        
        self.button.setTitle(self.text, for: .normal)
        self.button.setTitleColor(self.textColor, for: .normal)
        self.button.backgroundColor = self.backgroundColor
        

        view.addSubview(self.button)
        self.button.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalConstraint = NSLayoutConstraint(item: self.button, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: self.constraints!.getHorizontal())
        let verticalConstraint = NSLayoutConstraint(item: self.button, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: self.constraints!.getVertical())
        let widthConstraint = NSLayoutConstraint(item: self.button, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.constraints!.getWidth()!)
        let heightConstraint = NSLayoutConstraint(item: self.button, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.constraints!.getHeight()!)
        
        view.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
           
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

