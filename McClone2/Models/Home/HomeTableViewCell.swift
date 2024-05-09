//
//  HomeTableViewCell.swift
//  McClone2
//
//  Created by IFTS40 on 21/04/24.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var homeLbl: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var underView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imgView.contentMode = .scaleAspectFill
        
        homeLbl.adjustsFontSizeToFitWidth = true

        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(data:homeData){
        homeLbl.text = data.title
        imgView.image = data.img
        
        
        underView.layer.cornerRadius = 10
        imgView.layer.cornerRadius = 10
        underView.layer.shadowOffset = .zero
        underView.layer.shadowOpacity = 0.5
        underView.layer.shadowRadius = 3
    }
    
    
    

}
