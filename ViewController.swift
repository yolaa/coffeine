//
//  ViewController.swift
//  Coffeine
//
//  Created by Dimitri Yola on 01/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let Ingredients = ["UHT", "Steamed"]
    
    let coffeeType = ["roasted","filtered"]
    
    let topping = ["caramel", "chocolate"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
//        tableView.delegate = self
//        tableView.dataSource = self
//
//        let nibMode = UINib(nibName: ModeCell.identifier , bundle: nil)
//        tableView.register(nibMode, forCellReuseIdentifier: ModeCell.identifier)
//
//        let nibRecent = UINib(nibName: RecentCell.identifier, bundle: nil)
//        tableView.register(nibRecent, forCellReuseIdentifier: RecentCell.identifier)
//
//        let nibHeader = UINib(nibName: HeaderCell.identifier, bundle: nil)
//        tableView.register(nibHeader, forCellReuseIdentifier: HeaderCell.identifier)
//
        
        
    }


}

