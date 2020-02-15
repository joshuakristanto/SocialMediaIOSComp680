//
//  SecondViewController.swift
//  NavigationBar
//
//  Created by Joshua Kristanto on 2/7/20.
//  Copyright © 2020 Joshua Kristanto. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var saleTax: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        total.text = "$0.00"
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: Any) {
        let prices = Double(price.text!)!
        let salesTaxes = Double(saleTax.text!)!
        let totalSalesTaxes = prices * salesTaxes
        let totalPrices = prices + totalSalesTaxes
        total.text = "$\(totalPrices)"
    }
    
//    @IBAction func calculate(_ sender: Any) {
//        let prices = Double(price.text!)!
//        let salesTaxs = Double(salesTax.text!)!
//
//        let totalSalesTaxs = prices * salesTaxs
//        let totalPrices = prices + totalSalesTaxs
//        totalLabel.text = "$\(totalPrices)"
//    }

}

