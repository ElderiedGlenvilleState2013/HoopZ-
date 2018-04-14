//
//  categoryVC.swift
//  Practicing seque
//
//  Created by McKinney family  on 4/13/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class categoryVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var categoryTV: UITableView!
    
    
    private(set) public var category = [Category] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        categoryTV.delegate = self
        categoryTV.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instances.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Category Cell", for: indexPath) as? categoryCell {
            let category = DataService.instances.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return categoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instances.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: category)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? productVC {
            let barBTN = UIBarButtonItem()
            barBTN.title = ""
            navigationItem.backBarButtonItem = barBTN
            assert(sender as? Category != nil)
            productVC.initProducts(category: sender as! Category)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
        
    }
}
