//
//  HadithViewController.swift
//  Hadith
//
//  Created by Kittikawin Sontinarakul on 19/3/2563 BE.
//  Copyright © 2563 Kittikawin Sontinarakul. All rights reserved.
//

import UIKit
import Firebase

class HadithViewController: UITableViewController {
    
    let db = Firestore.firestore()
    
    var hadithData: [Hadith] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.Table.reuseCell, for: indexPath)
        cell.textLabel?.text = hadithData[indexPath.row].type
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hadithData.count
    }
    
    
    func loadData() {
        db.collection(K.FireStore.collectionName).addSnapshotListener { (querySnapshot, error) in
            if error != nil {
                print(error)
            } else {
                if let snapshotDoc = querySnapshot?.documents {
                    for doc in snapshotDoc {
                        let data = doc.data()
                        if let type = data[K.FireStore.type] as? String,
                            let hadithName = data[K.FireStore.hadithName] as? String,
                            let arab = data[K.FireStore.arab] as? String,
                            let thai = data[K.FireStore.thai] as? String,
                            let rec = data[K.FireStore.thai] as? String {
                            
                            let newHadith = Hadith(type: type, hadithName: hadithName, arab: arab, thai: thai, recorder: rec)
                            self.hadithData.append(newHadith)
                            
                            DispatchQueue.main.async {
                                self.tableView.reloadData()
                            }
                        }
                    }
                }
            }
        }
    }
    /*
     var type: String?
     var hadithName: String?
     var arab: String?
     var thai: String?
     var recorder: String?
     
     */
}
