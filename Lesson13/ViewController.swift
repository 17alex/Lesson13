//
//  ViewController.swift
//  Lesson13
//
//  Created by Alex on 24.05.2021.
//

import UIKit

final class ViewController: UIViewController {

    //MARK: - Propertis
    
    private lazy var startButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitle("Start", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
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
    
    private var leafs: [LeafView] = []
    private var apples: [AppleView] = []
    private let source = Source()
    
    //MARK: - LiveCycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        setup()
    }
    
    //MARK: - Metods
    
    @objc private func start() {
        hideStartButton()
        leafs.forEach { $0.removeFromSuperview() }
        apples.forEach { $0.removeFromSuperview() }
        treeImageView.removeFromSuperview()
        
        showTree()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { self.showLeaf() }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { self.showApple() }
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { self.paintApple() }
        DispatchQueue.main.asyncAfter(deadline: .now() + 7) { self.showStartButton() }
    }
    
    private func setup() {
        view.addSubview(startButton)
        NSLayoutConstraint.activate([
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 180),
        
        ])
    }
    
    private func showStartButton() {
        self.startButton.isHidden = false
    }
    
    private func hideStartButton() {
        self.startButton.isHidden = true
    }
    
    private func showTree() {
        view.addSubview(treeImageView)
        let heightTree = min(view.bounds.width, view.bounds.height) * 0.7
        treeImageView.frame.size = .init(width: heightTree, height: heightTree)
        treeImageView.center.x = view.bounds.midX
        treeImageView.center.y = view.bounds.midY - 60
        treeImageView.alpha = 0.0
        UIView.animate(withDuration: 1.0) {
            self.treeImageView.alpha = 1.0
        }
    }
    
    private func showLeaf() {
        leafs = source.getLeafs(for: treeImageView.bounds.height)
        leafs.forEach { treeImageView.addSubview($0) }
    }
    
    private func showApple() {
        apples = source.getApples(for: treeImageView.bounds.height)
        apples.forEach { treeImageView.addSubview($0) }
    }
    
    private func paintApple() {
        apples.forEach { $0.changeColor() }
    }
}
