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
    
    @IBOutlet weak var logoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        animateElements()
    }
    
    func updateUI(){
        signInBtn.alpha = 0.0
        signUpBtn.alpha = 0.0
        logoView.alpha = 0.0
        signInBtn.layer.cornerRadius = 10
        signUpBtn.layer.cornerRadius = 10
        signUpBtn.layer.borderColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        signUpBtn.layer.borderWidth = 1
        
        logoView.transform = CGAffineTransform(translationX: 0, y: 20)
        signInBtn.transform = CGAffineTransform(translationX: 0, y: 20)
        signUpBtn.transform = CGAffineTransform(translationX: 0, y: 20)
    }
    
    func animateElements(){
        let duration = 1.0
        let delayIncrement = 0.3
        
        UIView.animate(withDuration: duration, delay: 0.0, options: [.curveEaseInOut], animations: {
            self.logoView.alpha = 1.0
            self.logoView.transform = .identity
        }, completion: nil)
        
        UIView.animate(withDuration: duration, delay: delayIncrement, options: [.curveEaseInOut], animations: {
            self.signInBtn.alpha = 1.0
            self.signInBtn.transform = .identity
        }, completion: nil)
        
        UIView.animate(withDuration: duration, delay: delayIncrement * 2, options: [.curveEaseInOut], animations: {
            self.signUpBtn.alpha = 1.0
            self.signUpBtn.transform = .identity
        }, completion: nil)
    }
    
    
    
    
    @IBAction func signInAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toSignIn", sender: self)
    }
    
    @IBAction func signUpBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "toSignUp", sender: self)
    }
    
    
    
    
}
