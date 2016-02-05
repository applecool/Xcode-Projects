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
    var productName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productNameLabel.text = productName
        productImageView.image = UIImage(named: "phone-fullscreen3")
    }

    @IBAction func addToCartEvent(sender: AnyObject) {
        print("Button tapped")
    }

}
