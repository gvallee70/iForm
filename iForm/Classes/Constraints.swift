//
//  Constraints.swift
//  iForm
//
//  Created bvertical Gwendal on 04/03/2022.
//

import Foundation

public class Constraints {
    private var horizontal: Double
    private var vertical: Double
    private var width: Double? = 100
    private var height: Double? = 20
    
    public init(_ horizontal: Double, _ vertical: Double, _ width: Double? = 100, _ height: Double? = 20) {
        self.horizontal = horizontal
        self.vertical = vertical
        self.width = height
        self.height = height
    }
    
    public func getHorizontal() -> Double {
        return self.horizontal;
    }
    
    public func getVertical() -> Double {
        return self.vertical;
    }
    
    public func getHeight() -> Double? {
        return self.height;
    }
    
    public func getWidth() -> Double? {
        return self.width;
    }
    
    public func setHorizontal(_ horizontal: Double) {
        self.horizontal = horizontal;
    }
    
    public func setVertical(_ vertical: Double) {
        self.vertical = vertical;
    }
    
    
    public func setHeight(_ height: Double) {
        self.height = height;
    }
    
    public func setWidth(_ width: Double) {
        self.width = width;
    }
    
}
