//
//  ChoresViewController.swift
//  mydwellmobile
//
//  Created by Brian Clow on 12/9/19.
//  Copyright © 2019 Brian Clow. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase
import FirebaseFirestore



class ChoresViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var choresTableView: UITableView!
    
    let db = Firestore.firestore()

    let user = Auth.auth().currentUser
    
    var choreData = [String]()
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        choresTableView.delegate = self
        choresTableView.dataSource = self
        
        loadCurrentChores()
        

        db.collection("chores").addSnapshotListener { querySnapshot, error in
            guard (querySnapshot?.documents) != nil else {
                print("Error fetching documents: \(error!)")
                return
            }
            for document in querySnapshot!.documents {
                let newChore = document.get("name")
                
                self.choreData.append(newChore as! String)
            }
        }
                self.choresTableView.reloadData()
    }

    
    
    func loadCurrentChores(){

        db.collection("chores").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    let newChore = document.get("name")

                    self.choreData.append(newChore as! String)
                }
                self.choresTableView.reloadData()
            }
        }

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return choreData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "choreCell")
        cell?.textLabel?.text = choreData[indexPath.row]
        
        
        return cell!
    }
    


}
