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
        let containerView = UIView()
        containerView.backgroundColor = .clear
        //create and add image icone for email
        let envelopeImageView = UIImageView()
        envelopeImageView.image = UIImage(systemName: "envelope")
        envelopeImageView.tintColor = .white
        
        containerView.addSubview(envelopeImageView)
        envelopeImageView.centerY(inView: containerView)
        envelopeImageView.anchor(left: containerView.leftAnchor, paddingLeft: 8)
        envelopeImageView.setDimensions(height: 20.0, width: 24.0)

        containerView.setHeight(height: 50)
        return containerView
    }()
    
    private let passwordContainerView: UIView = {
        let containerView = UIView()
        containerView.backgroundColor = .clear
        
        //create and add image icon for password
        let passwordImageView = UIImageView()
        passwordImageView.image = UIImage(systemName: "lock")
        passwordImageView.tintColor = .white
    
        containerView.addSubview(passwordImageView)
        passwordImageView.centerY(inView: containerView)
        passwordImageView.anchor(left: containerView.leftAnchor, paddingLeft: 8)
        passwordImageView.setDimensions(height: 20, width: 24)

        containerView.setHeight(height:  50)
        
        return containerView
    }()
    
    private let iconImage: UIImageView = {
        let containerView = UIImageView()
        containerView.image = UIImage(systemName: "bubble.right")
        containerView.tintColor = .white
        return containerView
    }()
    
    private let authButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .systemRed
        button.setHeight(height: 50)
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
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView,          passwordContainerView, authButton])
        
        stack.axis = .vertical
        stack.spacing = 16
        view.addSubview(stack)
        
        stack.anchor(top: iconImage.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 32, paddingLeft: 32, paddingRight: 32)
        
    }
    
    func configureGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemPink.cgColor]
        gradient.locations = [0,1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
    }
}
