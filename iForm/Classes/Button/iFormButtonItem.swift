//
//  iFormButtonItem.swift
//  iForm
//
//  Created by Gwendal on 05/03/2022.
//

import Foundation
import UIKit

@available(iOS 14.0, *)
public class iFormButtonItem: UIButton, iFormDelegate {
    //from iFormDelegate
    public private(set) var txt: String?
    public private(set) var txtColor: UIColor?
    public private(set) var bcgColor: UIColor?
    public private(set) var constr: Constraints?
    
    private var button: UIButton = UIButton()
    private var action: UIAction = UIAction{_ in }
    
    public init(
        frame: CGRect = CGRect(x: 0, y: 0, width: 100, height: 15),
        text: String? = "",
        textColor: UIColor? = UIColor.black,
        backgroundColor: UIColor? = UIColor.lightGray,
        constraints: Constraints = Constraints(horizontal: 0, vertical: 0, width: 100, height: 15),
        action: UIAction = UIAction { _ in }
    ) {
            super.init(frame: frame)
            
            self.txt             = text
            self.txtColor        = textColor
            self.bcgColor        = backgroundColor
            self.constr          = constraints
            self.action          = action
            
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    @available(iOS 14.0, *)
    public func display(on view: UIView) {
        self.button = UIButton(type : .system,primaryAction: self.action)
        
        self.button.setTitle(self.txt, for: .normal)
        
        //Styling button's layer
        self.button.layer.cornerRadius  = CGFloat(5.0)
        self.button.layer.borderColor   = UIColor.lightGray.cgColor
        self.button.layer.borderWidth   = CGFloat(1.0)
        
        self.button.backgroundColor     = self.bcgColor
        
        self.button.setTitleColor(self.txtColor, for: .normal)

        view.addSubview(self.button)
        self.button.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalConstraint = NSLayoutConstraint(item: self.button, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: self.constr!.getHorizontal())
        let verticalConstraint = NSLayoutConstraint(item: self.button, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: self.constr!.getVertical())
        let widthConstraint = NSLayoutConstraint(item: self.button, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.constr!.getWidth())
        let heightConstraint = NSLayoutConstraint(item: self.button, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: self.constr!.getHeight())
        
        view.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
           
    }
        
    public func setText(_ text: String) {
        self.txt = text
    }
    
    public func setTextColor(_ color: UIColor) {
        self.txtColor = color
    }
    
    public func setBackgroundColor(_ color: UIColor) {
        self.bcgColor = color
    }
    
    
    public func setConstraints(_ constraints: Constraints) {
        self.constr = constraints
    }
    
    public func setBorderRadius(radius : CGFloat){
        self.button.layer.cornerRadius = radius;
    }
    
}

