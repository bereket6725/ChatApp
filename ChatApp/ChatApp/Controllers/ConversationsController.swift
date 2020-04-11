//
//  ConversationsController.swift
//  ChatApp
//
//  Created by Bereket Ghebremedhin  on 4/11/20.
//  Copyright © 2020 Bereket Ghebremedhin . All rights reserved.
//

import UIKit

class ConversationsController: UIViewController {
    
    // MARK - Properties
    private let tableView = UITableView()
    
    
    // MARK - Lifecycle
    
    // MARK - Helpers
    @objc func showProfile() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI(){
        view.backgroundColor = .white
        configureNavigationBar()
        configureTableView()
        let image = UIImage(systemName: "person.circle.fill")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(showProfile))
    }
    
    func configureTableView() {
        tableView.backgroundColor = .systemPink
        view.addSubview(tableView)
        tableView.frame = view.frame
    }
    
    func configureNavigationBar() {
        //UINavigationBarAppearance is the instance used to create custom nav bars
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = .systemPurple
        //the standard/neutral appearence of the nav bar
        navigationController?.navigationBar.standardAppearance = appearance
        //sets look if you were to scroll and the nav bar were to shrink
        navigationController?.navigationBar.compactAppearance = appearance
        //the appearence of the edge of the scrolled view when it matches the edge of the na vbar
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Messages"
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
        
        
    }
}
