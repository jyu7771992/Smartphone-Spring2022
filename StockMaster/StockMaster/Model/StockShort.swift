//
//  Stock.swift
//  StockMaster
//
//  Created by Peipei Yu on 3/2/22.
//

import Foundation
import RealmSwift

class StockShort : Object{
    @objc dynamic var symbol : String = ""
    @objc dynamic var price : Float = 0.0
    @objc dynamic var volumn: Int = 0
    
    override static func primaryKey() -> String? {
        return "Symbol"
    }
    
}


