//
//  Source.swift
//  Lesson13
//
//  Created by Alex on 26.05.2021.
//

import UIKit

final class Source {
    
    func getLeafs(for hv: CGFloat) -> [LeafView] {
        let leafs: [LeafView: CGFloat] = [
            LeafView(frame: .init(x: hv * 0.01, y: hv * 0.65, width: 5, height: 10)) : 3.5,
            LeafView(frame: .init(x: hv * 0.01, y: hv * 0.65, width: 5, height: 10)) : 5.0,
            
            LeafView(frame: .init(x: hv * 0.005, y: hv * 0.42, width: 5, height: 10)) : 4.2,
            LeafView(frame: .init(x: hv * 0.005, y: hv * 0.42, width: 5, height: 10)) : 5.5,
            
            LeafView(frame: .init(x: hv * 0.09, y: hv * 0.20, width: 5, height: 10)) : 4.5,
            LeafView(frame: .init(x: hv * 0.09, y: hv * 0.20, width: 5, height: 10)) : 5.6,
            
            LeafView(frame: .init(x: hv * 0.25, y: hv * 0.08, width: 5, height: 10)) : 5.1,
            LeafView(frame: .init(x: hv * 0.25, y: hv * 0.08, width: 5, height: 10)) : 6.5,
            
            LeafView(frame: .init(x: hv * 0.49, y: hv * 0.01, width: 5, height: 10)) : -0.8,
            LeafView(frame: .init(x: hv * 0.49, y: hv * 0.01, width: 5, height: 10)) :  0.5,
            
            LeafView(frame: .init(x: hv * 0.67, y: hv * 0.06, width: 5, height: 10)) : -0.2,
            LeafView(frame: .init(x: hv * 0.67, y: hv * 0.06, width: 5, height: 10)) : 1.0,
            
            LeafView(frame: .init(x: hv * 0.9, y: hv * 0.12, width: 5, height: 10)) : 0.0,
            LeafView(frame: .init(x: hv * 0.9, y: hv * 0.12, width: 5, height: 10)) : 1.3,
            
            LeafView(frame: .init(x: hv * 0.90, y: hv * 0.36, width: 5, height: 10)) : 0.3,
            LeafView(frame: .init(x: hv * 0.90, y: hv * 0.36, width: 5, height: 10)) : 1.4,
            
            LeafView(frame: .init(x: hv * 0.96, y: hv * 0.53, width: 5, height: 10)) : 0.8,
            LeafView(frame: .init(x: hv * 0.96, y: hv * 0.53, width: 5, height: 10)) : 2.0,
            
            LeafView(frame: .init(x: hv * 0.84, y: hv * 0.71, width: 5, height: 10)) : 1.1,
            LeafView(frame: .init(x: hv * 0.84, y: hv * 0.71, width: 5, height: 10)) : 2.5,
            
            
            LeafView(frame: .init(x: hv * 0.22, y: hv * 0.42, width: 5, height: 10)) : 4.2,
            LeafView(frame: .init(x: hv * 0.22, y: hv * 0.42, width: 5, height: 10)) : 5.5,
            
            LeafView(frame: .init(x: hv * 0.33, y: hv * 0.24, width: 5, height: 10)) : 5.1,
            LeafView(frame: .init(x: hv * 0.33, y: hv * 0.24, width: 5, height: 10)) : 6.3,
            
            LeafView(frame: .init(x: hv * 0.55, y: hv * 0.22, width: 5, height: 10)) : -0.2,
            LeafView(frame: .init(x: hv * 0.55, y: hv * 0.22, width: 5, height: 10)) : 1.4,
            
            LeafView(frame: .init(x: hv * 0.68, y: hv * 0.38, width: 5, height: 10)) : 0.5,
            LeafView(frame: .init(x: hv * 0.68, y: hv * 0.38, width: 5, height: 10)) : 1.7,
            
            LeafView(frame: .init(x: hv * 0.74, y: hv * 0.56, width: 5, height: 10)) : 1.2,
            LeafView(frame: .init(x: hv * 0.74, y: hv * 0.56, width: 5, height: 10)) : 2.9,
            
            
            LeafView(frame: .init(x: hv * 0.42, y: hv * 0.57, width: 5, height: 10)) : 4.2,
            LeafView(frame: .init(x: hv * 0.42, y: hv * 0.57, width: 5, height: 10)) : 5.5,
            
            LeafView(frame: .init(x: hv * 0.47, y: hv * 0.41, width: 5, height: 10)) : -1.0,
            LeafView(frame: .init(x: hv * 0.47, y: hv * 0.41, width: 5, height: 10)) : 1.0,
            
            LeafView(frame: .init(x: hv * 0.51, y: hv * 0.57, width: 5, height: 10)) : 1.1,
            LeafView(frame: .init(x: hv * 0.52, y: hv * 0.57, width: 5, height: 10)) : 2.5,
        ]
        
        return leafs.map {
            $0.0.transform = CGAffineTransform(rotationAngle: $0.1)
            return $0.0
        }
    }
    
    func getApples(for hv: CGFloat) -> [AppleView] {
        return [
            AppleView(frame: .init(x: hv * 0.15, y: hv * 0.55, width: 6, height: 7)),
            AppleView(frame: .init(x: hv * 0.20, y: hv * 0.20, width: 6, height: 7)),
            AppleView(frame: .init(x: hv * 0.46, y: hv * 0.10, width: 6, height: 7)),
            AppleView(frame: .init(x: hv * 0.75, y: hv * 0.32, width: 6, height: 7)),
            AppleView(frame: .init(x: hv * 0.80, y: hv * 0.62, width: 6, height: 7))
        ]
    }
}
