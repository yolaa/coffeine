//
//  ViewController.swift
//  Coffeine
//
//  Created by Dimitri Yola on 01/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {

    var color: String?
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
  let coffees = ["Variants","Brewing process"]

    let coffeeImage: [UIImage] = [
        UIImage(named: "discover1")!,
        UIImage (named: "discover2")!
    ]
    
    
    
    
    
    
    
    
    
    
    
    
    
    let mainCategory = ["Know the drink menu of coffee", "Common main of types of coffee you should know"]
    
    let descCategory = ["here", "tap!"]
    
    
    let Ingredients = ["UHT", "Steamed"]
    
    let coffeeType = ["roasted","filtered"]
    
    let topping = ["caramel", "chocolate"]
    
    let wordsDesc = ["Freshly steamed milk with vanilla-flavored syrup marked with espresso and topped with a caramel drizzle for an oh-so-sweet finish.", "Hybrid between a mocha and a cappuccino. Basically, it's a cappuccino that's made with chocolate powder or sauce. Perfect for the chocoholic who likes a foamy mocha! Flat White: One-third espresso, two-thirds steamed milk, and a very thin, flat layer of foam "] 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //self.title = "UITableView"
        
        tableView?.dataSource = self
        tableView?.delegate = self
        
        collectionView?.dataSource = self
        collectionView?.delegate = self
        
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        tableView?.register(nibName, forCellReuseIdentifier: "tableViewCell")
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainCategory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        cell.commonInit("coffee\(indexPath.item)", title: mainCategory[indexPath.item], sub: descCategory[indexPath.item] )
        return cell
        }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int ) -> Int{
        return coffees.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.coffeLabel.text = coffees[indexPath.item]
        cell.coffeImageView.image = coffeeImage[indexPath.item]
//        cell.layer.borderColor = UIColor.lightGray.cgColor
//        cell.layer.borderWidth = 0.5
        return cell
    }
    
    // cell.coffeeLabel.text = coffees
    
    // ganti warna - contoh
//     func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier:"TableViewCell", for: indexPath as IndexPath) as! TableViewCell
//
//        cell.textLabel!.text = descCategory[indexPath.row]
//        cell.backgroundColor = UIColor.green
//
//        return cell
//    }
    
    

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
        
    
    
    
//    cell.contentView.frame = cell.bounds
//    cell.contentView.autoresizingMask = [.flexibleLeftMargin,
//                                         .flexibleWidth,
//                                         .flexibleRightMargin,
//                              .flexibleTopMargin,
//                              .flexibleHeight,
//                              .flexibleBottomMargin]
        
    }

