//
//  AltroTitleTableViewCell.swift
//  McClone2
//
//  Created by IFTS40 on 26/05/24.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase


class AltroTitleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var altroTitle: UILabel!
    
    var ref = Database.database().reference()
    var userName = " "{
        didSet{
            DispatchQueue.main.async {
                self.altroTitle.text = "Hi \(self.userName.capitalized)"
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let userID = Auth.auth().currentUser?.uid
        ref.child("users").child(userID!).observeSingleEvent(of: .value, with: { snapshot in
          
          let value = snapshot.value as? NSDictionary
          let username = value?["Full_name"] as? String ?? ""
            self.userName = username
        
        }) { error in
          print(error.localizedDescription)
        }
        
    }
}
