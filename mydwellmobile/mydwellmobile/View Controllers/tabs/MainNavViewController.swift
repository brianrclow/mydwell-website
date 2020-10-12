//
//  MainNavViewController.swift
//  mydwellmobile
//
//  Created by Brian Clow on 12/8/19.
//  Copyright © 2019 Brian Clow. All rights reserved.
//

import UIKit
import FirebaseAuth

class MainNavViewController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        authenticateUser()
        
    }
    //this is to check if a user is already signed in
    func authenticateUser() {
        
    }
    


}
