//
//  SignupViewController.swift
//  McClone2
//
//  Created by IFTS40 on 04/05/24.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var fullNameTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var policySwitch: UISwitch!
    @IBOutlet weak var passwTxtField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpBtn.layer.cornerRadius = 10
        updateUI()
    }
    
    func updateUI(){
        if policySwitch.isOn && fullNameTxtField.hasText && emailTxtField.hasText && passwTxtField.hasText{
            
            signUpBtn.isEnabled = true
            signUpBtn.titleLabel?.textColor = .black
        }else{
            signUpBtn.isEnabled = false
        }
        
    }

    @IBAction func policySwitchAction(_ sender: UISwitch) {
        updateUI()
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
    }
    
    @IBAction func signInAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toSignIn", sender: self)
    }
    @IBAction func backAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
