//
//  ViewController.swift
//  mydwellmobile
//
//  Created by Brian Clow on 12/8/19.
//  Copyright © 2019 Brian Clow. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
    }
        
    func setUpElements() {
        Utilities.styleFilledButton(loginButton)
        Utilities.styleHollowButton(signUpButton)
    }

}

