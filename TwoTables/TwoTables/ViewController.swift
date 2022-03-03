//
//  ViewController.swift
//  TwoTables
//
//  Created by Peipei Yu on 3/2/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var tbl2: UITableView!
    @IBOutlet weak var tbl1: UITableView!
    
    var arr1 = ["Seattle", "Chicago", "Michigan"]
    var arr2 = ["USA", "Taiwan", "Japan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tbl1{
            return arr1.count
        } else{
            return arr2.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tbl1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
            cell.textLabel?.text = arr1[indexPath.row]
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
            cell.textLabel?.text = arr2[indexPath.row]
            return cell
        }
    }
    // short code func editingStyle and search the first option and then apppear
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            if tableView == tbl1{
                arr1.remove(at: indexPath.row)
            }else{
                arr2.remove(at: indexPath.row)
            }
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

