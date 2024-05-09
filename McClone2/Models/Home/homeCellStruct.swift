//
//  homeCellStruct.swift
//  McClone2
//
//  Created by IFTS40 on 21/04/24.
//

import Foundation
import UIKit


struct homeData{
    let title:String
    let img:UIImage
}

var arrayHome:[homeData] = [
    .init(title: "Enjoy our Offers", img: #imageLiteral(resourceName: "bigmick1")),
    .init(title: "Order and Pay In-App", img: #imageLiteral(resourceName: "ordina_app.jpg")),
    .init(title: "McDelivery: place an Order!", img: #imageLiteral(resourceName: "delivery.jpeg")),
    .init(title: "Spoil them with a gift card", img: #imageLiteral(resourceName: "giftcard.png")),
    .init(title: "Work with Us", img: #imageLiteral(resourceName: "lavora_con_noi.jpg")),
]
