//
//  ViewController.swift
//  Core-Data-Demo-App
//
//  Created by Lloyd Blake on 22/09/2019.
//  Copyright © 2019 Lloyd Blake. All rights reserved.
//

import UIKit

class CompaniesController: UITableViewController {
    
    let companies = [
        Company(name: "Apple", founded: Date()),
        Company(name: "Google", founded: Date()),
        Company(name: "Facebook", founded: Date())
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set the background colour of the main navigation controller
        view.backgroundColor = .white
        
        self.navigationItem.title = "Companies"
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "plus"), style: .plain, target: self, action: #selector(handleAddCompany))
        
        
        
        
        //tableView.separatorStyle = .none
        
        tableView.separatorColor = .white
        
        tableView.tableFooterView = UIView()
        
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
        tableView.backgroundColor = .darkBlue
        
        //setupNavigationStyle()
    }

    @objc func handleAddCompany(){
        
       let createCompanyController = CreateCompanyController()
        
        createCompanyController.view.backgroundColor = .darkBlue
        
        let navController = CustomNavgationController(rootViewController: createCompanyController)
        
        present(navController, animated: true, completion: nil)
        
        
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
         let view = UIView()
        view.backgroundColor = .lightBlue
        
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        
        
        cell.backgroundColor = .tealColour
        
        let company = companies[indexPath.row]
        cell.textLabel?.text = company.name
        cell.textLabel?.textColor = .white
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  companies.count
    }
    
    
   
    
    
    
    /*func setupNavigationStyle() {
        
        
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = .lightRed
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
    }*/
    
}

