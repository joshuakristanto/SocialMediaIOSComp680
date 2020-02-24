//
//  SecondViewController.swift
//  NavigationBar
//
//  Created by Joshua Kristanto on 2/7/20.
//  Copyright © 2020 Joshua Kristanto. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

//    @IBOutlet weak var total: UILabel!
//    @IBOutlet weak var price: UITextField!
//    @IBOutlet weak var saleTax: UITextField!
  static func calculate(price: Double) ->Double {
            let prices = price + 10
               
               return prices
       
       }
//    @IBOutlet var scrollView: UIScrollView!
//    @IBOutlet weak var imageView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        imageView.heightAnchor.constraint(equalToConstant: scrollView.frame.height - 100).isActive = true
//         imageView.widthAnchor.constraint(equalToConstant: scrollView.frame.height - 40).isActive = true
//        imageView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor).isActive = true
//        imageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        let scrollView = UIScrollView()
           self.view.addSubview(scrollView)

           scrollView.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
             scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
             scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
             scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
             scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
           ])
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.spacing = 20
        stackView.distribution = .fill
        scrollView.addSubview(stackView)

        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
          // Attaching the content's edges to the scroll view's edges
          stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
          stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
          stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
          stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),

          // Satisfying size constraints
          stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.distribution = .fillEqually
//        imageView.axis = .vertical
//        imageView.spacing = 40
        
        let fileManager = FileManager.default
        let bundleURL = Bundle.main.bundleURL
        let assetURL = bundleURL.appendingPathComponent("HundredFreePic.bundle")

        do {
          let contents = try fileManager.contentsOfDirectory(at: assetURL, includingPropertiesForKeys: [URLResourceKey.nameKey, URLResourceKey.isDirectoryKey], options: .skipsHiddenFiles)
 var a = 0
          for item in contents
          {
              print(item.lastPathComponent)
//            let imageName = item.lastPathComponent
            let image = UIImage(named: item.lastPathComponent)
            
            let one = UIImageView(image:  image)
//            let one = UIImageView(image: (id)initWithContentsOfFile:(NSString *)item.lastPathComponent))
            if(a < 101)
            {
            stackView.addArrangedSubview(one)
             one.translatesAutoresizingMaskIntoConstraints = false
             one.heightAnchor.constraint(equalToConstant: 200).isActive = true
                one.clipsToBounds = true
                one.contentMode = .scaleAspectFit
                a = a + 1
            }
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
    
   

}

