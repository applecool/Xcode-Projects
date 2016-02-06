//
//  ProductTableViewController.swift
//  VintageStore
//
//  Created by ShellZero on 2/4/16.
//  Copyright © 2016 ShellZero. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {
    
    var products: [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        product1.name = "1910 Vintage Telephone"
        product1.productImage = "phone-fullscreen3"
        product1.cellImage = "image-cell3"
        
        product2.name = "1921 Dial Phone"
        product2.productImage = "phone-fullscreen2"
        product2.cellImage = "image-cell2"
        
        product3.name = "1907 Wall Set"
        product3.productImage = "phone-fullscreen1"
        product3.cellImage = "image-cell1"
        
        product4.name = "1937 Desk Set"
        product4.productImage = "phone-fullscreen4"
        product4.cellImage = "image-cell4"
        
        products = [product1,product2,product3,product4]
    }
    
    //Returns the number of products in the whole inventory
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        if let p = products {
            return p.count
        }
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        //Re using the created cells as the Product Cell
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        let product = products?[indexPath.row]
        
        if let p = product {
            cell.textLabel?.text = p.name
            if let i = p.cellImage{
                cell.imageView?.image = UIImage(named: i)
            }
        }
        
        return cell
    }
    
    // This function enables us to navigate from the Table View Controller to the Product View Controller.
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPathForCell(cell) else{
                    return
            }
            productVC?.product = products?[indexPath.row]
            
        }
    }

}
