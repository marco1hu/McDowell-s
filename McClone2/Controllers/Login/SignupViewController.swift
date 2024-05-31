//
//  SignupViewController.swift
//  McClone2
//
//  Created by IFTS40 on 04/05/24.
//

import UIKit
import SCLAlertView
import Firebase
import FirebaseAuth
import FirebaseDatabase

class SignupViewController: UIViewController {

    @IBOutlet weak var fullNameTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var policySwitch: UISwitch!
    @IBOutlet weak var passwTxtField: UITextField!
    @IBOutlet weak var confirmPasswrdTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpBtn.layer.cornerRadius = 10
        self.navigationItem.setHidesBackButton(true, animated: true)
        //updateUI()
    }
    
    func updateUI(){
        
        if policySwitch.isOn{
            signUpBtn.isEnabled = true
            signUpBtn.titleLabel?.textColor = .black
            
        }else{
            signUpBtn.isEnabled = false
            signUpBtn.titleLabel?.textColor = .gray
            
        }
        
    }

    @IBAction func policySwitchAction(_ sender: UISwitch) {
        //updateUI()
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
        if (fullNameTxtField.text == "" || emailTxtField.text == "" || passwTxtField.text == "" || confirmPasswrdTxtField.text == ""){
            SCLAlertView().showError("Error", subTitle: "One or more of the required fields is missing.")
        }else{
            if passwTxtField.text == confirmPasswrdTxtField.text{
                
                
                Auth.auth().createUser(withEmail: emailTxtField.text!, password: passwTxtField.text!) { authResult, error in
                    if error != nil{
                        SCLAlertView().showError("Error", subTitle: "Error creation new account: \(String(describing: error?.localizedDescription))")
                    }else{
                        
                        let appearance = SCLAlertView.SCLAppearance(
                            showCloseButton: false
                        )
                        
                        let alertView = SCLAlertView(appearance: appearance)
                        
                        alertView.addButton("Continua") {
                            let reference = Database.database().reference(fromURL: "https://mcdowell-s1db-default-rtdb.europe-west1.firebasedatabase.app")

                            reference.child("users").child(Auth.auth().currentUser!.uid).setValue(["Full_name": self.fullNameTxtField.text, "Email": self.emailTxtField.text, "ID": Auth.auth().currentUser?.uid])
                            
                            self.performSegue(withIdentifier: "toSignIn", sender: self)
                        }
                        
                        alertView.showSuccess( "Well Done!",subTitle: "\(self.fullNameTxtField.text!) created a new account")
                        
                    }
                }
                
            }else{
                SCLAlertView().showError("Error", subTitle: "The passwords are not the same")
            }
        }
    }
    
    
    @IBAction func signInAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toSignIn", sender: self)
        
    }
    
    
    
    @IBAction func backAction(_ sender: UIButton) {
        performSegue(withIdentifier: "back", sender: self)
    }
    
}
