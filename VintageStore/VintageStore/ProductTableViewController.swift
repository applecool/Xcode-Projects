//
//  ProductTableViewController.swift
//  VintageStore
//
//  Created by ShellZero on 2/4/16.
//  Copyright © 2016 ShellZero. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {
    
    var productNames: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNames = ["1910 Vintage Telephone", "1921 Dial Phone", "1907 Wall Set", "1937 Desk Set"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        if let pNames = productNames {
            return pNames.count
        }
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        let productName = productNames?[indexPath.row]
        
        if let pName = productName {
            cell.textLabel?.text = pName
        }
        
        cell.imageView?.image = UIImage(named: "image-cell1")
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPathForCell(cell) else{
                    return
            }
            productVC?.productName = productNames?[indexPath.row]
            
        }
    }

}
