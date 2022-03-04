//
//  Dimensions.swift
//  iForm
//
//  Created by Gwendal on 04/03/2022.
//

import Foundation

public class Dimensions {
    private var height: Double
    private var width: Double
    
    public init(_ height: Double, _ width: Double) {
        self.height = height
        self.width = width
    }
    
    public func getHeight() -> Double {
        return self.height;
    }
    
    public func getWidth() -> Double {
        return self.width;
    }
    
    public func setHeight(_ height: Double) {
        self.height = height;
    }
    
    public func setWidth(_ width: Double) {
        self.width = width;
    }
}
