//
//  SigninViewController.swift
//  McClone2
//
//  Created by IFTS40 on 04/05/24.
//

import UIKit

class SigninViewController: UIViewController {

    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var forgotPassBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        

        
    }
    
    func updateUI(){
        signInBtn.layer.cornerRadius = 10
        
       
    }
    
    @IBAction func forgotPassAction(_ sender: UIButton) {
    }
    
    @IBAction func signInAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toTab", sender: self)
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toSignUp", sender: self)
    }
}
