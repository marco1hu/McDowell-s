//
//  QRViewController.swift
//  McClone2
//
//  Created by IFTS40 on 22/04/24.
//

import UIKit

class QRViewController: UIViewController {
    
    
    
    var selectedOfferta:OfferteCell?
    
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
        
        
    }
    

}
