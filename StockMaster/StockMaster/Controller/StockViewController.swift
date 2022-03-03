//
//  StockViewController.swift
//  StockMaster
//
//  Created by Peipei Yu on 3/2/22.
//

import UIKit
import RealmSwift

class StockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(Realm.Configuration.defaultConfiguration.fileURL?.path)
    }
    

  
    @IBAction func addDBAction(_ sender: Any) {
        let stock = StockShort()
        stock.symbol = "BTS"
        stock.date = "2020-09-22"
        stock.gradingCompany = "Ｎamjoon"
        stock.previousGrade = "Outperform"
   
           do{
               let realm = try Realm()
               try realm.write({
                   realm.add(stock)
               })
           }catch{
               print("Error in writing to db")
           }
    }
  
    
}
