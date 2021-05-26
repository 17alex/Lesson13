//
//  AppleView.swift
//  Lesson13
//
//  Created by Alex on 26.05.2021.
//

import UIKit

class AppleView: UIView {
    
    private let imageView: UIImageView = {
        let greenImageView = UIImageView()
        greenImageView.image = UIImage(named: "appleGreen")
        return greenImageView
    }()
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        addSubview(imageView)
        imageView.frame = bounds
        imageView.layer.anchorPoint = .init(x: 0.5, y: 0.3)

        
        UIView.animate(withDuration: 2.0) {
            self.imageView.transform = CGAffineTransform(scaleX: 8.0, y: 8.0)
        }
    }
    
    func changeColor() {
        let redImageView = UIImageView()
        redImageView.image = UIImage(named: "appleRed")
        redImageView.alpha = 0
        addSubview(redImageView)
        redImageView.frame = bounds
        redImageView.layer.anchorPoint = .init(x: 0.5, y: 0.3)
        redImageView.transform = CGAffineTransform(scaleX: 8.0, y: 8.0)
        UIView.animate(withDuration: 1.0) {
            redImageView.alpha = 1
        }
    }
    
}
