//
//  ProductTableViewController.swift
//  VintageStore
//
//  Created by ShellZero on 2/4/16.
//  Copyright © 2016 ShellZero. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = "Graham Bell"
        cell.imageView?.image = UIImage(named: "image-cell1")
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            productVC?.productName = "1910 Vintage Telephone"
            
        }
    }

}
