//
//  SettingsViewController.swift
//  mydwellmobile
//
//  Created by Brian Clow on 12/9/19.
//  Copyright © 2019 Brian Clow. All rights reserved.
//

import UIKit
import FirebaseAuth

class SettingsViewController: UIViewController {
    @IBOutlet weak var accountName: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let username = Auth.auth().currentUser?.displayName
        accountName.text = username
    }
    
    @IBAction func handleSignOutButtonTapped(){
//        do {
//            try Auth.auth().signOut()
//            let startViewController = ViewController()
//            let startNavigationViewController = UINavigationController(rootViewController: startViewController)
//            self.present(startNavigationViewController, animated: true, completion: nil)
//
//        } catch let error {
//            print("Failed to sign out error...", error)
//        }
        
    }



}
