//
//  ChoresComposeViewController.swift
//  mydwellmobile
//
//  Created by Brian Clow on 12/15/19.
//  Copyright © 2019 Brian Clow. All rights reserved.
//

import UIKit
import Firebase


class ChoresComposeViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    let db = Firestore.firestore()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addChore(_ sender: Any){
        
        //add the data to firebase
        db.collection("chores").addDocument(data: [
            "name": textView.text!
        ])
        
        
        //dismiss the popover
        presentingViewController?.dismiss(animated: true, completion:nil)
    }
    
    @IBAction func cancelChore(_ sender: Any){
        
        //dismiss the popover
    presentingViewController?.dismiss(animated: true, completion: nil)
    }
    



}
