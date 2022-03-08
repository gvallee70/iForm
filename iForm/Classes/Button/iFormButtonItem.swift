//
//  iFormButtonItem.swift
//  iForm
//
//  Created by Gwendal on 05/03/2022.
//

import Foundation
import UIKit

public class iFormButtonItem: UIButton, iFormDelegate {
    private var button: UIButton = UIButton()
    
    @available(iOS 14.0, *)
    public init(
        frame : CGRect = CGRect(x: 0, y: 0, width: 100, height: 30),
        text: String = "",
        buttonStyle : UIButtonStyle = UIButtonStyle(inputRadius: 5, backgroundColor: .systemBlue, textColor: .white, tintColor: .white, borderColor : .white, borderWidth : 1.0),
        action: UIAction = UIAction { _ in }
    ) {
        super.init(frame : frame)
            
            self.button = UIButton(type: .system, primaryAction: action)

            self.setText(text)
            self.setTextColor(buttonStyle.textColor)
            self.setBackgroundColor(buttonStyle.backgroundColor)
            
            //Styling button's layer
            self.setBorderRadius(buttonStyle.inputRadius)
            self.setBorderColor(buttonStyle.borderColor)
            self.setBorderWidth(buttonStyle.borderWidth)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    //iForm delegate
    public func display(on view: UIView, withConstraints constraints: Constraints = Constraints(horizontal: 0, vertical: 0, width: 100, height: 30)) {
        
        view.addSubview(self.button)
        self.setConstraints(parentView: view, constraints)
    }
        
    public func setText(_ text: String) {
        self.button.setTitle(text, for: .normal)
    }
    
    public func setTextColor(_ color: UIColor) {
        self.button.titleLabel?.textColor = color
    }
    
    public func setBackgroundColor(_ color: UIColor) {
        self.button.backgroundColor = color
    }
    
    
    public func setConstraints(parentView: UIView, _ constraints: Constraints) {
        self.button.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalConstraint = NSLayoutConstraint(item: self.button, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentView, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: constraints.getHorizontal())
        let verticalConstraint = NSLayoutConstraint(item: self.button, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: parentView, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: constraints.getVertical())
        let widthConstraint = NSLayoutConstraint(item: self.button, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: constraints.getWidth())
        let heightConstraint = NSLayoutConstraint(item: self.button, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: constraints.getHeight())
        
        parentView.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
    }
    
    public func setBorderRadius(_ radius: CGFloat){
        self.button.layer.cornerRadius = radius
    }
    
    public func setBorderColor(_ color: UIColor){
        self.button.layer.borderColor = color.cgColor
    }
    
    public func setBorderWidth(_ width: CGFloat){
        self.button.layer.borderWidth = width
    }
    
}

