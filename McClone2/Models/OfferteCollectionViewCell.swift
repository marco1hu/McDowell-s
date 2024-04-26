//
//  OfferteCollectionViewCell.swift
//  McClone2
//
//  Created by IFTS40 on 22/04/24.
//

import UIKit

class OfferteCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var underView: UIView!
    
    
    func configCell(data: OfferteCell){
        
        imgView.image = data.img
        descriptionLbl.text = data.description
        
        imgView.layer.cornerRadius = 10
        underView.layer.cornerRadius = 10
        
        underView.layer.shadowOffset = .zero
        underView.layer.shadowOpacity = 0.5
        underView.layer.shadowRadius = 3
    }
}
