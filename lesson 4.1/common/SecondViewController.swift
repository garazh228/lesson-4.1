//
//  SecondViewController.swift
//  lesson 4.1
//
//  Created by adyl CEO on 14/01/2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    private var secondPageImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "yes")
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSecondPageImg()
        
        GradientHelper.setupGradientBackground(for: view)
        
        
    }
    
    private func setupSecondPageImg() {
        view.addSubview(secondPageImg)
        
        NSLayoutConstraint.activate([
            secondPageImg.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            secondPageImg.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

}
