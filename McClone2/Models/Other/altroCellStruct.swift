//
//  altroCellStruct.swift
//  McClone2
//
//  Created by IFTS40 on 21/04/24.
//

import Foundation
import UIKit

struct AltroCell {
    let title:String
    let image:UIImage
}

var arrayAltro:[AltroCell] = [
    .init(title: "Restaurants", image: #imageLiteral(resourceName: "icons8-segnaposto-30.png")),
    .init(title: "My Account", image: #imageLiteral(resourceName: "icons8-utente-30.png")),
    .init(title: "Products", image: #imageLiteral(resourceName: "icons8-patatine-fritte-30.png")),
    .init(title: "Privacy Policy", image: #imageLiteral(resourceName: "icons8-informazioni-30.png")),
    .init(title: "Our Staff", image: UIImage(imageLiteralResourceName: "staff")),
    .init(title: "Help and Support", image: #imageLiteral(resourceName: "icons8-aiuto-30.png")),
    .init(title: "Languages & Country/Region", image: #imageLiteral(resourceName: "icons8-globo-30.png"))
]
