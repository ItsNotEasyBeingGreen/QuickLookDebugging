//
//  UIBezierPathExtension.swift
//  QuickLookDebugging
//
//  Created by Mark Cornelisse on 11/02/2019.
//  Copyright © 2019 Mark Cornelisse. All rights reserved.
//

import UIKit

func buildPath(for center: CGPoint, with radius: CGFloat, and steps: CGFloat, and loopCount: CGFloat) -> UIBezierPath {
    let away = radius / steps
    let around = loopCount / steps * 2 * CGFloat.pi
    
    let path = UIBezierPath.init()
    path.move(to: center)
    
    for i in 0...Int(steps) {
        let x = cos(CGFloat(i) * around) * CGFloat(i) * away
        let y = sin(CGFloat(i) * around) * CGFloat(i) * away
        
        path.addLine(to: CGPoint(x: x + center.x, y: y + center.y))
    }
    
    return path
}

extension CGRect {
    var center: CGPoint {
        return CGPoint(x: self.midX, y: self.midY)
    }
}
