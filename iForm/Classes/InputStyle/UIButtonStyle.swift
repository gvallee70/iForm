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
    var inputWidth      : Double
    var inputHeight     : Double
    var inputRadius     : Double
    var backgroundColor : UIColor
    var textColor       : UIColor
    var tintColor       : UIColor
    
    //UIButtonStyle attributes
    
    
    public init(inputWidth : Double, inputHeight : Double, inputRadius : Double, backgroundColor : UIColor, textColor : UIColor, tintColor : UIColor){
        
        self.inputWidth         = inputWidth
        self.inputHeight        = inputHeight
        self.inputRadius        = inputRadius
        self.backgroundColor    = backgroundColor
        self.textColor          = textColor
        self.tintColor          = tintColor
    }
    
    
}
