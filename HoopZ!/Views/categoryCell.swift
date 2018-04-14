//
//  categoryCell.swift
//  Practicing seque
//
//  Created by McKinney family  on 4/13/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class categoryCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var basketballImage: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func updateViews(category: Category) {
        basketballImage.image = UIImage(named: category.imageName)
        nameLabel.text = category.title
        
    }
    
    
    
    
}
