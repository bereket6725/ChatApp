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
    
    private let emailContainerView: UIView = {
        let emailView = UIView()
        emailView.backgroundColor = .cyan
        return emailView
    }()
    
    private let passwordContainerView: UIView = {
        let passwordView = UIView()
        passwordView.backgroundColor = .yellow
        return passwordView
    }()
    
    private let iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "bubble.right")
        imageView.tintColor = .white 
        return imageView
    }()
    
    private let authButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .systemRed
        
        return button
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
        
        view.addSubview(iconImage)
        iconImage.centerX(inView: view)
        iconImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 32)
        iconImage.setDimensions(height: 120, width: 120)
    }
    
    func configureGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemPink.cgColor]
        gradient.locations = [0,1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
    }
}
