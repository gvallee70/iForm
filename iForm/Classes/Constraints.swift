//
//  Constraints.swift
//  iForm
//
//  Created by Gwendal on 04/03/2022.
//

import Foundation

public class Constraints {
    private var x: Double
    private var y: Double
    
    public init(_ x: Double, _ y: Double) {
        self.x = x
        self.y = y
    }
    
    public func getX() -> Double {
        return self.x;
    }
    
    public func getY() -> Double {
        return self.y;
    }
    
    public func setX(_ x: Double) {
        self.x = x;
    }
    
    public func setY(_ y: Double) {
        self.y = y;
    }
    
}
