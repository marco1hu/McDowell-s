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
    .init(title: "Ristorante", image: #imageLiteral(resourceName: "icons8-segnaposto-30.png")),
    .init(title: "Il mio Account", image: #imageLiteral(resourceName: "icons8-utente-30.png")),
    .init(title: "Prodotti", image: #imageLiteral(resourceName: "icons8-patatine-fritte-30.png")),
    .init(title: "Privacy Policy e Termini & Condizioni", image: #imageLiteral(resourceName: "icons8-informazioni-30.png")),
    .init(title: "Ristoranti aderenti alle offerte", image: #imageLiteral(resourceName: "icons8-informazioni-30.png")),
    .init(title: "Aiuto e Supporto", image: #imageLiteral(resourceName: "icons8-aiuto-30.png")),
    .init(title: "Lingua e Paese", image: #imageLiteral(resourceName: "icons8-globo-30.png"))
]
