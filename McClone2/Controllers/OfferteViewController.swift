//
//  OfferteViewController.swift
//  McClone2
//
//  Created by IFTS40 on 22/04/24.
//

import UIKit

class OfferteViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    

    @IBOutlet weak var offerteCollectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        offerteCollectionView.delegate = self
        offerteCollectionView.dataSource = self
        
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfferte.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = offerteCollectionView.dequeueReusableCell(withReuseIdentifier: "offerteCell", for: indexPath) as? OfferteCollectionViewCell else { return UICollectionViewCell() }
        
        cell.configCell(data: arrayOfferte[indexPath.row])
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let qrVC = storyboard?.instantiateViewController(withIdentifier: "qrView") as? QRViewController else { return }
        
        qrVC.selectedOfferta = arrayOfferte[indexPath.row]
        
        navigationController?.pushViewController(qrVC, animated: true)
        
   
    }
    

}
