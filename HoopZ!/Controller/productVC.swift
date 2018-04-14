//
//  productVC.swift
//  Practicing seque
//
//  Created by McKinney family  on 4/13/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class productVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet var productTV: UICollectionView!
    
    private(set) public var products = [Product]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productTV.delegate = self
        productTV.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initProducts(category: Category) {
        products = DataService.instances.getBasketballProduct(forProductTitle:category.title)
        navigationItem.title = category.title
        
    }

   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Product Cell", for: indexPath) as? productCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return productCell()
    }
    
    
    
    
    
}
