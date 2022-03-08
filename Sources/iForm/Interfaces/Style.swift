//
//  Style.swift
//  iForm
//
//  Created by Nicolas TRAN on 08/03/2022.
//

import Foundation
import UIKit

protocol Style {
    
    var inputWidth      : Double {get set}
    var inputHeight     : Double {get set}
    var inputRadius     : Double {get set}
    var backgroundColor : UIColor {get set}
    var textColor       : UIColor {get set}
    var tintColor       : UIColor {get set}
    
}
