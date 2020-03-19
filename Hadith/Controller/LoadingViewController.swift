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

    let db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        delay(second: 2.0) {
            self.performSegue(withIdentifier: K.Segue.gettingStarted, sender: nil)
        }
    }

}

