//
//  ViewController.swift
//  Lesson13
//
//  Created by Alex on 24.05.2021.
//

import UIKit

final class ViewController: UIViewController {

    private lazy var startButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Start", for: .normal)
        button.addTarget(self, action: #selector(start), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let treeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dead-tree")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private var leafViews: [LeafView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setup()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setup()
    }
    
    @objc private func start() {
        setupTree()
    }
    
    
    private func setup() {
        view.addSubview(startButton)
        NSLayoutConstraint.activate([
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        
        ])
    }

    private func setupTree() {
        startButton.isHidden = true
        
        view.addSubview(treeImageView)
        treeImageView.frame.size = .init(width: view.bounds.width * 0.7, height: view.bounds.width * 0.7)
        treeImageView.center.x = view.bounds.midX
        treeImageView.center.y = view.bounds.midY + 120
        treeImageView.alpha = 0.0
        
        UIView.animate(withDuration: 2.0) {
            self.treeImageView.alpha = 1.0
        } completion: { (_) in
            self.setupLeaf()
        }

       
    }
    
    private func setupLeaf() {
        let hv = treeImageView.bounds.height
        let dd: [LeafView: CGFloat] = [
            LeafView(frame: .init(x: hv * 0.01, y: hv * 0.65, width: 5, height: 10)) : 4.0,
            LeafView(frame: .init(x: hv * 0.005, y: hv * 0.42, width: 5, height: 10)) : 4.5,
            LeafView(frame: .init(x: hv * 0.25, y: hv * 0.08, width: 5, height: 10)) : 5.5,
            LeafView(frame: .init(x: hv * 0.49, y: hv * 0.01, width: 5, height: 10)) : -0.5,
            LeafView(frame: .init(x: hv * 0.67, y: hv * 0.06, width: 5, height: 10)) : 0.0,
            LeafView(frame: .init(x: hv * 0.9, y: hv * 0.12, width: 5, height: 10)) : 0.5,
        ]
        dd.forEach {
            $0.0.transform = CGAffineTransform(rotationAngle: $0.1)
            treeImageView.addSubview($0.0)
            
        }
        
        
    }

}


//let treeOpacityAnimation = CABasicAnimation(keyPath: "opacity")
//treeOpacityAnimation.fromValue = 0.0
//treeOpacityAnimation.toValue = 1.0
//treeOpacityAnimation.duration = 2.0
//treeImageView.layer.add(treeOpacityAnimation, forKey: "treeOpacityAnimation")
//treeImageView.alpha = 1.0
