//
//  ViewController.swift
//  LifeTest
//
//  Created by Roman on 07.01.2022.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        installBackgrounColor()
    }
    
    private func installBackgrounColor() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.white.cgColor,
            UIColor.systemIndigo.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

