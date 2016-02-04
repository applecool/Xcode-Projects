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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productNameLabel.text = "Vintage Phone 1910"
        productImageView.image = UIImage(named: "phone-fullscreen3")
    }


}
