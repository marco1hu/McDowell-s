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
    .init(img: #imageLiteral(resourceName: "deal1.jpeg"), description: "McDowell's Beef Burger"),
    .init(img: #imageLiteral(resourceName: "deal2.jpeg"), description: "McDowell's Chicken Wrap"),
    .init(img: #imageLiteral(resourceName: "deal3.jpeg"), description: "McDowell's Chicken Burger"),
    .init(img: #imageLiteral(resourceName: "deal4.jpeg"), description: "Enjoy our special McFloat"),
    .init(img: #imageLiteral(resourceName: "deal5.jpeg"), description: "Fries or Drink"),
    .init(img: #imageLiteral(resourceName: "deal6.jpeg"), description: "McDowell's McFlurry")
]
