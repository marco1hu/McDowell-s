//
//  QRViewController.swift
//  McClone2
//
//  Created by IFTS40 on 22/04/24.
//

import UIKit

class QRViewController: UIViewController {
    
    
    
    var selectedOfferta:OfferteCell?
    
    var count:Int = 30
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tempoNumLbl: UILabel!
    @IBOutlet weak var tempoResiduoLbl: UILabel!
    @IBOutlet weak var utilizzaBtnOut: UIButton!
    @IBOutlet weak var QRImageView: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    func updateUI(){
        utilizzaBtnOut.layer.cornerRadius = 15
        imageView.image = selectedOfferta?.img
        descriptionLbl.text = selectedOfferta?.description
        tempoNumLbl.isHidden = true
        tempoResiduoLbl.isHidden = true
        
    }
    
    @IBAction func utilizzaBtnAction(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Attention", message: "Do you want to continue activating the offer?", preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        let continueAct = UIAlertAction(title: "Continue", style: .default , handler: { action in
            
            self.utilizzaBtnOut.isHidden = true
            self.tempoResiduoLbl.isHidden = false
            
            
            let infoQrCode = self.selectedOfferta?.description.data(using: .ascii, allowLossyConversion: false)
            //drop last is for the € symbol error
            
            let generator =  CIFilter(name: "CIQRCodeGenerator")
            
            generator?.setValue(infoQrCode, forKey: "InputMessage")
            
            let image = generator?.outputImage
            let trasformer = CGAffineTransform(scaleX: 10, y: 10)
            let immaginetrasformata = image?.transformed(by: trasformer)
            
            let immagineQrCode = UIImage(ciImage: immaginetrasformata!)
            
            self.QRImageView.image = immagineQrCode
            
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.aggiornaConteggio), userInfo: nil, repeats: true)
            self.tempoNumLbl.isHidden = false
            
        })
        
        alert.addAction(cancel)
        alert.addAction(continueAct)
        present(alert, animated: true)
        
        
    }
    
    @objc func aggiornaConteggio(){
        if count > 0{
            count -= 1
            tempoNumLbl.text = "\(count)"
        }else{
            tempoNumLbl.isHidden = false
            navigationController?.popViewController(animated: true)
        }
    }

}
