//
//  LoginController.swift
//  ChatApp
//
//  Created by Bereket Ghebremedhin  on 4/11/20.
//  Copyright © 2020 Bereket Ghebremedhin . All rights reserved.
//

import UIKit

class LoginController : UIViewController {
    
    // MARK: - Properties
    
    private let iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "bubble.right")
        imageView.tintColor = .white 
        return imageView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK : - Helpers
    
    func configureUI() {
        view.backgroundColor = .systemPurple
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        configureGradientLayer()
    }
    
    func configureGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemPink.cgColor]
        gradient.locations = [0,1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
    }
}
