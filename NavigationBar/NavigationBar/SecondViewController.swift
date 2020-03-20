//
//  SecondViewController.swift
//  NavigationBar
//
//  Created by Joshua Kristanto on 2/7/20.
//  Copyright © 2020 Joshua Kristanto. All rights reserved.
//

import UIKit
import ARKit
import RealityKit

class SecondViewController: UIViewController {
    
    var arView = ARView(frame: .zero)
    var anchor:ARTEST.Scene!

    override func loadView(){
        super.loadView()
        view.addSubview(arView)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        arView.frame = view.frame
//        ARTEST.Scene.look(<#T##self: ARTEST.Scene##ARTEST.Scene#>)
        anchor = try! ARTEST.loadScene()
//        scene2 = try! ARTEST.
//        anchor.generateCollisionShapes(recursive: true)
        print("HElloWorld")
        
        self.arView.scene.anchors.append(anchor)
//
//        anchor.notifications.starter.post()
//        ARTEST.loadSceneAsync { (result, error) in
//            guard error == nil else {
//                return
//            }
//
//            if let ARTEST = result {
//                self.arView.scene.addAnchor(ARTEST)
//            }
//
//        }
//        ARTEST.loadSceneAsync{(Result,<ARTEST.Scene, Error>) in
//            guard error == nil else{
//                return
//            }
//            if let spinnerScene = result{
//                self.arView.scene.addAnchor(spinnerScene)
//            }
//
//
//    }
    
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        // 6: create an ARWorldTrackingConfiguration
//        let configuration = ARWorldTrackingConfiguration()
//        // 7: run the configuration
//        arView.session.run(configuration)
//    }
    
   

}

