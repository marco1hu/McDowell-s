//
//  AltroTableViewCell.swift
//  McClone2
//
//  Created by IFTS40 on 21/04/24.
//

import UIKit

class AltroTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    func configCell(data:AltroCell){
        titleLbl.text = data.title
        imgView.image = data.image
    }

}
