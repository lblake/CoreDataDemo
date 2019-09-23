//
//  ViewController.swift
//  Core-Data-Demo-App
//
//  Created by Lloyd Blake on 22/09/2019.
//  Copyright © 2019 Lloyd Blake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        navigationItem.title = "Companies"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "plus"), style: .plain, target: self, action: #selector(handleAddCompany))
        
        
        setupNavigationStyle()
    }

    @objc func handleAddCompany(){
        
        print("Hello")
        
    }

    func setupNavigationStyle(){
        
        let lightRed = UIColor(red: 247/255, green: 66/255, blue: 82/255, alpha: 1)
        
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = lightRed
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
    }
    
}

