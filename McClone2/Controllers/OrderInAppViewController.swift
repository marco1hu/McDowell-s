//
//  OrderInAppViewController.swift
//  McClone2
//
//  Created by IFTS40 on 02/05/24.
//

import UIKit

class OrderInAppViewController: UIViewController {
    
    var cartBrain = CartBrain()

    @IBOutlet weak var goToCartBtn: UIButton!
    @IBOutlet weak var categoriesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goToCartBtn.setTitleColor(.black, for: .normal)
        
        categoriesTableView.dataSource = self
        categoriesTableView.delegate = self
    }
    


}


extension OrderInAppViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else{
            return cartBrain.nCategories
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = categoriesTableView.dequeueReusableCell(withIdentifier: "cellMessage", for: indexPath)
            return cell
        }else{
            guard let cell = categoriesTableView.dequeueReusableCell(withIdentifier: "cellCategory", for: indexPath) as? CategoriesTableViewCell else { return UITableViewCell() }
            cell.configCell(data: cartBrain.catArray[indexPath.row])
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 150
        }else{
            return 100
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        categoriesTableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 1{
            guard let productsVC = storyboard?.instantiateViewController(withIdentifier: "Products") as? ProductsViewController else { return }
            
            productsVC.products = cartBrain.catArray[indexPath.row].productsArray
            
            navigationController?.pushViewController(productsVC, animated: true)
        }
    }
    
    
}
