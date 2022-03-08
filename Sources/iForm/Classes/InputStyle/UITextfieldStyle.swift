//
//  UITextfieldStyle.swift
//  iForm
//
//  Created by Nicolas TRAN on 08/03/2022.
//

import Foundation
import UIKit

public class UITextFieldStyle : Style {
    
    //Style protocol attributes
    var inputRadius     : Double
    var backgroundColor : UIColor
    var textColor       : UIColor
    var tintColor       : UIColor
    
    //UITextfield style attributes
    var placeholderColor: UIColor
    var padding         : Double
    
    public init(inputRadius : Double, padding : Double, backgroundColor : UIColor, textColor : UIColor, tintColor : UIColor, placeholderColor : UIColor){
        
        self.inputRadius        = inputRadius
        self.padding            = padding
        self.backgroundColor    = backgroundColor
        self.textColor          = textColor
        self.tintColor          = tintColor
        self.placeholderColor   = placeholderColor
    }
    
}
