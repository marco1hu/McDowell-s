//
//  offerteCellStruct.swift
//  McClone2
//
//  Created by IFTS40 on 21/04/24.
//

import Foundation
import UIKit

struct OfferteCell{
    let img:UIImage
    let description:String
}

var arrayOfferte:[OfferteCell] = [
    .init(img: #imageLiteral(resourceName: "crispymcbacon"), description: "Crispy McBacon Menu Large a 7€"),
    .init(img: #imageLiteral(resourceName: "menu_mcwrap_crispy.jpg"), description: "Mc Wrap Crispy a 5,90€"),
    .init(img: #imageLiteral(resourceName: "mc_chicken.jpg"), description: "Chicken McNuggets Menù a 4,90€"),
    .init(img: #imageLiteral(resourceName: "myselection.jpg.jpg"), description: "My Selection Menu Medio a 8€"),
    .init(img: #imageLiteral(resourceName: "insalata.jpg"), description: "Insalata del giorno Menù a 9,90€"),
]
