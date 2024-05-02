//
//  CartBrain.swift
//  McClone2
//
//  Created by IFTS40 on 02/05/24.
//

import Foundation
import UIKit


var categoriesArray:[ProductCategory] = [
    .init(name: "Panini e Menù",
          image: #imageLiteral(resourceName: "Panini e Menu.png"),
          productsArray: []),
    .init(name: "Sfiziosità e Salse",
          image: #imageLiteral(resourceName: "Sfiziosità.png"),
          productsArray: []),
    .init(name: "Bibite",
          image: #imageLiteral(resourceName: "Bibite.png"),
          productsArray: []),
    .init(name: "Gelati",
          image: #imageLiteral(resourceName: "Gelati.png"),
          productsArray: []),
    .init(name: "Caffetteria",
          image: #imageLiteral(resourceName: "caffe.png"),
          productsArray: []),
    .init(name: "Torte e Dessert",
          image: #imageLiteral(resourceName: "torte.png"),
          productsArray: [])
]

struct CartBrain{
    var nCategories:Int = categoriesArray.count
    var catArray:[ProductCategory] = categoriesArray
}
