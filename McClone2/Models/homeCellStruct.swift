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
    .init(title: "Goditi le nostre Offerte", img: #imageLiteral(resourceName: "offerte")),
    .init(title: "Ordina e Paga in App", img: #imageLiteral(resourceName: "ordina_app.jpg")),
    .init(title: "Ordina con McDelivery", img: #imageLiteral(resourceName: "delivery.jpeg")),
    .init(title: "Lavora con Noi", img: #imageLiteral(resourceName: "lavora_con_noi.jpg")),
]
