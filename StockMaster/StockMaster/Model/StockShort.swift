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
    @objc dynamic var date : String = ""
    @objc dynamic var gradingCompany : String = ""
    @objc dynamic var previousGrade : String = ""

    
    override static func primaryKey() -> String? {
        return "symbol"
    }
    
}


