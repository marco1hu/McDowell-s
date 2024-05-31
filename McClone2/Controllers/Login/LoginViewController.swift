//
//  SigninViewController.swift
//  McClone2
//
//  Created by IFTS40 on 04/05/24.
//

import UIKit
import FirebaseAuth
import SCLAlertView

class LoginViewController: UIViewController {

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
    
    @IBAction func loginAction(_ sender: UIButton) {
        
        
        if emailTxtField.text == "" || passwordTxtField.text == ""{
            SCLAlertView().showError("Error", subTitle: "One or more of the required fields is missing.")
        }else{
            Auth.auth().signIn(withEmail: emailTxtField.text!, password: passwordTxtField.text!) { authResult, error in
                
              
                
                if error != nil{
                    SCLAlertView().showError("Error", subTitle: "\(String(describing: error?.localizedDescription))")
                }else{
                    
                    let pass = self.passwordTxtField.text!
                    let mail = self.emailTxtField.text!
                    
                    let passD = pass.data(using: .utf8)
                    let mailD = mail.data(using: .utf8)
                    
                    let p = KeyChainHelper.storeData(data: passD!, forService: Config.service, account: Config.accountP)
                    let m = KeyChainHelper.storeData(data: mailD!, forService: Config.service, account: Config.accountM)
                    
                    if p && m {
                        print("Dati salvatinel Keychain")
                       
                    }else{
                        print("I dati non sono stati salvati")
                    }
                    
                    self.performSegue(withIdentifier: "toTab", sender: nil)
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
