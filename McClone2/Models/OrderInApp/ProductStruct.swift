//
//  ProductStruct.swift
//  McClone2
//
//  Created by IFTS40 on 02/05/24.
//

import Foundation
import UIKit

struct ProductCategory{
    let name:String
    let image:UIImage
    var productsArray:[Product]
}

struct Product{
    let description:String
    let price:Float
    let priceMenu:Float
    let image:UIImage
}


