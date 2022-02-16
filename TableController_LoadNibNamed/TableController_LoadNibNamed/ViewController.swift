//
//  ViewController.swift
//  TableController_LoadNibNamed
//
//  Created by Peipei Yu on 2/15/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var name: String?
    // don't forget to set the row height of tableView and the height of TableViewCell they are all 300
    let foodName = ["food1", "food2", "food3","food4", "food5", "food6", "food7", "food8", "food9", "food10"] // the name must be the same as the image name
    let foodNameLabel = ["Food1", "Food2", "Food3", "Food4", "Food5", "Food6", "Food7", "Food8", "Food9", "Food10"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    //count images
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //bundle
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        cell.imgView.image = UIImage(named: foodName[indexPath.row])
        cell.lblImage.text = foodNameLabel[indexPath.row]
        
        return cell
    }


}

