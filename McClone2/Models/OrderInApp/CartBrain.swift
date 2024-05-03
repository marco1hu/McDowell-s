//
//  CartBrain.swift
//  McClone2
//
//  Created by IFTS40 on 02/05/24.
//

import Foundation
import UIKit


var categoriesArray:[ProductCategory] = [
    .init(name: "Burgers & Menu",
          image: #imageLiteral(resourceName: "Panini e Menu.png"),
          productsArray: [
            .init(description: "Not Crispy McBacon", price: 7.20, priceMenu: 10.50, image:#imageLiteral(resourceName: "isolated--gran-crispymcbacon_1.png") ),
            .init(description: "BigMick", price: 5.90, priceMenu: 8.90, image: #imageLiteral(resourceName: "big-mac-isolated.png")),
            .init(description: "Cheeseburger", price: 1.90, priceMenu: 5.90, image: #imageLiteral(resourceName: "cheeseburger--hero-isolated.png")),
            .init(description: "Double Cheeseburger", price: 3.50, priceMenu: 6.90, image: #imageLiteral(resourceName: "double-cheeseburger--isolated.png")),
            .init(description: "Chickenburger", price: 1.90, priceMenu: 5.90, image: #imageLiteral(resourceName: "chickenburger--hero-isolated_0.png")),
            .init(description: "Crispy McWrap", price: 6.50, priceMenu: 9.90, image: #imageLiteral(resourceName: "crispy-mcwrap-isolated-v2.png")),
            .init(description: "Double Chicken BBQ", price: 4.30, priceMenu: 7.20, image: #imageLiteral(resourceName: "double-chicken-bbq--hero-isolated.png")),
            .init(description: "McFish", price: 3.90, priceMenu: 6.90, image: #imageLiteral(resourceName: "filet-o-fish--hero-isolated.png")),
            .init(description: "McChicken", price: 5.90, priceMenu: 8.90, image: #imageLiteral(resourceName: "mcchicken--hero-isolated.png"))
          ]),
    .init(name: "Fries & Sides",
          image: #imageLiteral(resourceName: "Sfiziosità.png"),
          productsArray: []),
    .init(name: "Beverages",
          image: #imageLiteral(resourceName: "Bibite.png"),
          productsArray: []),
    .init(name: "McFlurry",
          image: #imageLiteral(resourceName: "Gelati.png"),
          productsArray: []),
    .init(name: "Coffee",
          image: #imageLiteral(resourceName: "caffe.png"),
          productsArray: []),
    .init(name: "Sweets & Treats",
          image: #imageLiteral(resourceName: "torte.png"),
          productsArray: [])
]

struct CartBrain{
    var nCategories:Int = categoriesArray.count
    var catArray:[ProductCategory] = categoriesArray
}
