//
//  FiftheViewController.swift
//  NavigationBar
//
//  Created by Joshua Kristanto on 2/22/20.
//  Copyright © 2020 Joshua Kristanto. All rights reserved.
//
//
//  SecondViewController.swift
//  NavigationBar
//
//  Created by Joshua Kristanto on 2/7/20.
//  Copyright © 2020 Joshua Kristanto. All rights reserved.
//

import UIKit

class FifthViewController: UICollectionViewController {

//    @IBOutlet weak var total: UILabel!
//    @IBOutlet weak var price: UITextField!
//    @IBOutlet weak var saleTax: UITextField!
    
    @IBOutlet weak var imageView: UIStackView!
    
    func collectViewUI(image: UIImage?) -> UICollectionView{
        let vUI = UICollectionView()
        vUI.addSubview(viewUI(image: image))
        return vUI
    }
    
    
    func viewUI(image: UIImage?) -> UIView {
        let vUI = UIView()
    
        vUI.addSubview(imageViewUI(image: image))
        return  vUI
    }
    func imageViewUI(image: UIImage?) -> UIImageView {
        let vUI = UIImageView(image: image)
    
        return  vUI
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.heightAnchor.constraint(equalToConstant: view.frame.height - 100).isActive = true
         imageView.widthAnchor.constraint(equalToConstant: view.frame.height - 40).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.distribution = .fillEqually
//        imageView.axis = .vertical
//        imageView.spacing = 40
        
        let fileManager = FileManager.default
        let bundleURL = Bundle.main.bundleURL
        let assetURL = bundleURL.appendingPathComponent("HundredFreePic.bundle")

        do {
          let contents = try fileManager.contentsOfDirectory(at: assetURL, includingPropertiesForKeys: [URLResourceKey.nameKey, URLResourceKey.isDirectoryKey], options: .skipsHiddenFiles)

          for item in contents
          {
              print(item.lastPathComponent)
//            let imageName = item.lastPathComponent
            let image = UIImage(named: item.lastPathComponent)
            
            let one = UIImageView(image:  image)
//            let one = UIImageView(image: (id)initWithContentsOfFile:(NSString *)item.lastPathComponent))
            imageView.addArrangedSubview(one)
          }
        }
        catch let error as NSError {
          print(error)
        }
        
//        total.text = "$0.00"
        // Do any additional setup after loading the view.
    }

//    @IBAction func calculate(_ sender: Any) {
//        let prices = Double(price.text!)!
//        let salesTaxes = Double(saleTax.text!)!
//        let totalSalesTaxes = prices * salesTaxes
//        let totalPrices = prices + totalSalesTaxes
//        total.text = "$\(totalPrices)"
//    }
    
//    @IBAction func calculate(_ sender: Any) {
//        let prices = Double(price.text!)!
//        let salesTaxs = Double(salesTax.text!)!
//
//        let totalSalesTaxs = prices * salesTaxs
//        let totalPrices = prices + totalSalesTaxs
//        totalLabel.text = "$\(totalPrices)"
//    }

}

