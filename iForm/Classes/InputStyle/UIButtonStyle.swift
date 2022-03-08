//
//  UIButtonStyle.swift
//  iForm
//
//  Created by Nicolas TRAN on 08/03/2022.
//

import Foundation
import UIKit

public class UIButtonStyle : Style {
    
    //Style protocol attributes
    var inputRadius     : Double
    var backgroundColor : UIColor
    var textColor       : UIColor
    var tintColor       : UIColor
    
    //UIButtonStyle attributes
    var borderColor     : UIColor
    var borderWidth     : Double
    
    
    public init(inputRadius : Double, backgroundColor : UIColor, textColor : UIColor, tintColor : UIColor, borderColor : UIColor, borderWidth : Double){
        
        self.inputRadius        = inputRadius
        self.backgroundColor    = backgroundColor
        self.textColor          = textColor
        self.tintColor          = tintColor
        self.borderColor        = borderColor
        self.borderWidth        = borderWidth
    }
    
    
}
