//
//  CategoriesTableViewCell.swift
//  McClone2
//
//  Created by IFTS40 on 02/05/24.
//

import UIKit

class CategoriesTableViewCell: UITableViewCell {

    @IBOutlet weak var catNameLbl: UILabel!
    @IBOutlet weak var iconImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(data:ProductCategory){
        catNameLbl.text = data.name
        iconImg.image = data.image
    }

}
