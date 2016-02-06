//
//  ProductViewController.swift
//  VintageStore
//
//  Created by ShellZero on 2/3/16.
//  Copyright © 2016 ShellZero. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = product{
            productNameLabel.text = p.name
            if let i = p.productImage{
                productImageView.image = UIImage(named: i)
            }
        }
   
        
    }

    @IBAction func addToCartEvent(sender: AnyObject) {
        print("Button tapped")
    }

}
