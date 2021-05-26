//
//  LeafView.swift
//  Lesson13
//
//  Created by Alex on 24.05.2021.
//

import UIKit

class LeafView: UIView {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "leaf")
        return imageView
    }()
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        addSubview(imageView)
        imageView.frame = bounds
        imageView.layer.anchorPoint = .init(x: 0.5, y: 1.0)
        
//        let anim1 = CABasicAnimation(keyPath: "transform.scale")
//        anim1.fromValue = 1
//        anim1.toValue = 5
//        anim1.repeatCount = 1
//        anim1.duration = 3.0
//        anim1.isRemovedOnCompletion = false
//        imageView.layer.add(anim1, forKey: "leafZoom")
        
//        let anim2 = CABasicAnimation(keyPath: "transform.rotation.z")
//        anim2.toValue = 1
//        anim2.duration = 1
//        anim2.autoreverses = true
//        anim2.repeatCount = .infinity
//        imageView.layer.add(anim2, forKey: "LeafeRotare")
        
//        let animation = CAAnimationGroup()
//        animation.animations = [anim1, anim2]
//        animation.duration = anim1.duration
//        imageView.layer.add(animation, forKey: "Common")
//        imageView.bounds = .init(x: -30, y: -50, width: 50, height: 75)
        
        UIView.animate(withDuration: 2.0) {
            self.imageView.transform = CGAffineTransform(scaleX: 5.0, y: 5.0)
        }
//        } completion: { (_) in
//
//            self.imageView.transform = CGAffineTransform(rotationAngle: 3)
//            CATransaction.commit()
//        }
//        UIView.animate(withDuration: 0.5, delay: 4.0, options: [.curveEaseInOut, .repeat, .autoreverse]) {
//            self.imageView.transform = .identity
//            self.imageView.transform = CGAffineTransform(rotationAngle: 3)
//        }

        
    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//
//        imageView.frame = bounds
//    }
}
