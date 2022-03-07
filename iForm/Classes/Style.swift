//
//  Style.swift
//  iForm
//
//  Created by Nicolas TRAN on 07/03/2022.
//

import Foundation
import UIKit

class Style : CustomStringConvertible {
    
    var styleName       : String
    var textfieldsWidth : Float
    var textfieldsHeight: Float
    var margin          : Float
    var layerRadius     : Float
    var padding         : Float
    var textColor       : UIColor
    var backgroundColor : UIColor
    var buttonsColor    : UIColor
    var description: String {
        return "Current Style values : { \(self.styleName) | \(self.textfieldsWidth) | \(self.textfieldsHeight) | \(self.margin) | \(self.layerRadius) | \(self.padding) | \(self.textColor) | \(self.backgroundColor) | \(self.buttonsColor)}"
    }
    
    init(styleName : String, width : Float, height : Float, margin : Float, layerRadius : Float, padding : Float, textColor : UIColor, backgroundColor : UIColor, buttonsColor : UIColor) {
        self.styleName          = styleName
        self.textfieldsWidth    = width
        self.textfieldsHeight   = height
        self.margin             = margin
        self.layerRadius        = layerRadius
        self.padding            = padding
        self.textColor          = textColor
        self.backgroundColor    = backgroundColor
        self.buttonsColor       = buttonsColor
    }
    
    
    
}
