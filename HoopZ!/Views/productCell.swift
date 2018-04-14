//
//  productCell.swift
//  HoopZ!
//
//  Created by McKinney family  on 4/13/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class productCell: UICollectionViewCell {
    
    @IBOutlet weak var ballImage: UIImageView!
    @IBOutlet weak var storyTV: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func updateViews(product: Product) {
        ballImage.image = UIImage(named: product.imageName)
        titleLabel.text = product.title
        storyTV.text = product.story
        
    }
    
}
