//
//  SigninViewController.swift
//  McClone2
//
//  Created by IFTS40 on 04/05/24.
//

import UIKit
import FirebaseAuth
import SCLAlertView

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
        self.navigationItem.setHidesBackButton(true, animated: true)
        
       
    }
    
    @IBAction func forgotPassAction(_ sender: UIButton) {
    }
    
    @IBAction func signInAction(_ sender: UIButton) {
        
        
        if emailTxtField.text == "" || passwordTxtField.text == ""{
            SCLAlertView().showError("Error", subTitle: "Some field empty")
        }else{
            Auth.auth().signIn(withEmail: emailTxtField.text!, password: passwordTxtField.text!) { authResult, error in
                if error != nil{
                    SCLAlertView().showError("Error", subTitle: "\(String(describing: error?.localizedDescription))")
                }else{
                    self.performSegue(withIdentifier: "toTab", sender: self)
                }
            }
        }
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        performSegue(withIdentifier: "back", sender: self)
        
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toSignUp", sender: self)
    }
}
