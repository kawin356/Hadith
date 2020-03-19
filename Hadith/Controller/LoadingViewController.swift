//
//  ViewController.swift
//  Hadith
//
//  Created by Kittikawin Sontinarakul on 2/3/2563 BE.
//  Copyright © 2563 Kittikawin Sontinarakul. All rights reserved.
//

import UIKit
import Firebase

class LoadingViewController: UIViewController {
    
    private var isFirstTime: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        delay(second: 2.0) {
            if self.isFirstTime {
                
                self.performSegue(withIdentifier: K.Segue.gettingStarted, sender: nil)
                
            } else {
                let mainController = UIStoryboard(name: K.Storyboard.main, bundle: nil).instantiateViewController(identifier: K.Storyboard.mainTabbar)
                let sceneDelegate = self.view.window?.windowScene?.delegate as! SceneDelegate
                let window = sceneDelegate.window
                
                 UIView.transition(with: window!, duration: 1.0, options: .transitionCrossDissolve, animations: nil, completion: nil)
                
                window?.rootViewController = mainController
                
               
            }
        }
    }
    
}

