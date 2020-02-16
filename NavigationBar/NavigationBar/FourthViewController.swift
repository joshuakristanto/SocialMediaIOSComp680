//
//  FourthViewController.swift
//  NavigationBar
//
//  Created by Joshua Kristanto on 2/15/20.
//  Copyright © 2020 Joshua Kristanto. All rights reserved.
//

import UIKit
import SafariServices



class FourthViewController: UIViewController {
    private var urlString:String = "https://google.com"
    
    @IBAction func web(_ sender: Any) {
                let svc = SFSafariViewController(url: URL(string: self.urlString)!)
                self.present(svc, animated: true, completion: nil)
        //        let svc = SFSafariViewController(url: url  )
        //      present(svc, animated: true, completion: nil)
    }
    @IBAction func newBrowser(_ sender: Any) {
        let url = URL(string: self.urlString)!
        UIApplication.shared.openURL(url)
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }


}
