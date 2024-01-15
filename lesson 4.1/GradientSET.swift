//
//  GradientSET.swift
//  lesson 4.1
//
//  Created by adyl CEO on 15/01/2024.
//

import UIKit

class GradientHelper {
    static func setupGradientBackground(for view: UIView) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor(red: 4/255, green: 116/255, blue: 148/255, alpha: 0.69).cgColor,
            UIColor(red: 74/255, green: 198/255, blue: 233/255, alpha: 1.0).cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.frame = view.bounds

        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
