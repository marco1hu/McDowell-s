//
//  OfferteViewController.swift
//  McClone2
//
//  Created by IFTS40 on 22/04/24.
//

import UIKit
import FirebaseDatabase


class OfferteDB: NSObject{
    @objc var descrizione: String?
    @objc var immagine: String?
}

class DealsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    

    @IBOutlet weak var offerteCollectionView: UICollectionView!
    var arrayOfferteDB = [OfferteDB] ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        offerteCollectionView.delegate = self
        offerteCollectionView.dataSource = self
        
        
        var reference = Database.database(url: "https://mcdowell-s1db-default-rtdb.europe-west1.firebasedatabase.app/").reference()
        reference.child("offerte").observe(.childAdded) { snapshot in
            if let dictionary = snapshot.value as? [String: AnyObject]{
                let descrizione = dictionary["descrizione"] as! String
                let immagine = dictionary["immagine"] as! String
                
                let elementiDaAggiungere = OfferteDB()
                elementiDaAggiungere.descrizione = descrizione
                elementiDaAggiungere.immagine = immagine
                
                self.arrayOfferteDB.append(elementiDaAggiungere)
            }
        }
        
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfferte.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = offerteCollectionView.dequeueReusableCell(withReuseIdentifier: "offerteCell", for: indexPath) as? DealsCollectionViewCell else { return UICollectionViewCell() }
        
        cell.configCell(data: arrayOfferte[indexPath.row])
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let qrVC = storyboard?.instantiateViewController(withIdentifier: "qrView") as? QRViewController else { return }
        
        qrVC.selectedOfferta = arrayOfferte[indexPath.row]
       
        navigationController?.pushViewController(qrVC, animated: true)
        
   
    }
    

}
