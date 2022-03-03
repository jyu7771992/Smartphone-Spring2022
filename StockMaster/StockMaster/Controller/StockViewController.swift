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
    

  
    @IBAction func addDBAction(_ sender: UIButton) {
        let stock = StockShort()
           stock.symbol = "TSLA"
           stock.price = 914.34
           stock.volumn  = 274983745
   
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
