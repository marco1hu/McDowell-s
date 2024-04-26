//
//  HomeTableViewController.swift
//  McClone2
//
//  Created by IFTS40 on 21/04/24.
//

import UIKit

class HomeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 2{
            return arrayHome.count
        }else{
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 250
        }else if indexPath.section == 1{
            return 180
        }else{
            return 320
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell1", for: indexPath)
            return cell
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell2", for: indexPath)
            return cell
        
        }else{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell3", for: indexPath) as? HomeTableViewCell else { return UITableViewCell() }
            cell.configCell(data: arrayHome[indexPath.row])
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 && indexPath.row == 0{
            print("APP VENTURE")
        }else if indexPath.section == 1 && indexPath.row == 0{
            print("Cerca e Divertiti!")
        }else if indexPath.section == 2{
            print("CELL")
        }
        
        
        
    }



}
