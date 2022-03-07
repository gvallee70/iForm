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
    var inputWidth      : Double
    var inputHeight     : Double
    var inputRadius     : Double
    var backgroundColor : UIColor
    var textColor       : UIColor
    var tintColor       : UIColor
    
    //UITextfield style attributes
    var padding         : Double
    
    public init(inputWidth : Double, inputHeight : Double, inputRadius : Double, padding : Double, backgroundColor : UIColor, textColor : UIColor, tintColor : UIColor){
        
        self.inputWidth         = inputWidth
        self.inputHeight        = inputHeight
        self.inputRadius        = inputRadius
        self.padding            = padding
        self.backgroundColor    = backgroundColor
        self.textColor          = textColor
        self.tintColor          = tintColor
    }
    
}
