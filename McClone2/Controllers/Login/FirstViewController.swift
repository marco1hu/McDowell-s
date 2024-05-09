//
//  FirstViewController.swift
//  McClone2
//
//  Created by IFTS40 on 04/05/24.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var signInBtn: UIButton!
    
    @IBOutlet weak var signUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInBtn.layer.cornerRadius = 10
        signUpBtn.layer.cornerRadius = 10
        signUpBtn.layer.borderColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        signUpBtn.layer.borderWidth = 1

    }
    
    @IBAction func signInAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toSignIn", sender: self)
    }
    
    @IBAction func signUpBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "toSignUp", sender: self)
    }
    
}
