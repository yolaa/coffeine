//
//  TableViewCell.swift
//  Coffeine
//
//  Created by Dimitri Yola on 05/05/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var descLable: UILabel!
    @IBOutlet weak var clickedLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    func commonInit(_ imageName: String, title: String, sub: String  ) {
        logoImage.image = UIImage(named: imageName)
        descLable.text = title
        clickedLabel.text = sub
    }
    
}
