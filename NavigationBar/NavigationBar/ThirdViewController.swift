//
//  SecondViewController.swift
//  NavigationBar
//
//  Created by Joshua Kristanto on 2/7/20.
//  Copyright © 2020 Joshua Kristanto. All rights reserved.
//

import UIKit
struct CustomData {
     var title: String
     var url: String
     var backgroundImage: UIImage
 }
class ThirdViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var myCollectionView: UICollectionView!
    //    @IBOutlet weak var total: UILabel!
//    @IBOutlet weak var price: UITextField!
//    @IBOutlet weak var saleTax: UITextField!
    
    var ref: [String] = []
    
  
  static func calculate(price: Double) ->Double {
            let prices = price + 10
               
               return prices
       
       }
//    @IBOutlet var scrollView: UIScrollView!
//    @IBOutlet weak var imageView: UIStackView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemSize = UIScreen.main.bounds.width/3 - 2
              
              let layout = UICollectionViewFlowLayout()
              layout.itemSize = CGSize(width: itemSize, height: itemSize)
              
              layout.minimumInteritemSpacing = 2
              layout.minimumLineSpacing = 2
              
              myCollectionView.collectionViewLayout = layout

    }

//    @IBAction func calculate(_ sender: Any) {
//        let prices = Double(price.text!)!
//        let salesTaxes = Double(saleTax.text!)!
//        let totalSalesTaxes = prices * salesTaxes
//        let totalPrices = prices + totalSalesTaxes
//        total.text = "$\(totalPrices)"
//    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
  
        let fileManager = FileManager.default
                let bundleURL = Bundle.main.bundleURL
                let assetURL = bundleURL.appendingPathComponent("HundredFreePic.bundle")

                do {
                  let contents = try fileManager.contentsOfDirectory(at: assetURL, includingPropertiesForKeys: [URLResourceKey.nameKey, URLResourceKey.isDirectoryKey], options: .skipsHiddenFiles)
         var a = 0
                
                  for item in contents
                  {
                      print(item.lastPathComponent)
                    ref.append(item.lastPathComponent)
        //            let imageName = item.lastPathComponent
                    let image = UIImage(named: item.lastPathComponent)
                    
                    let one = UIImageView(image:  image)
        //            let one = UIImageView(image: (id)initWithContentsOfFile:(NSString *)item.lastPathComponent))
                    if(a < 101)
                    {
        //            stackView.addArrangedSubview(one)
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
        return ref.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCell
        cell.myImageView.image = UIImage(named: ref[indexPath.row])
        cell.myImageView.translatesAutoresizingMaskIntoConstraints = false
//        cell.myImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        cell.myImageView.clipsToBounds = true
        cell.myImageView.contentMode = .scaleAspectFit
        return cell
    }
}


