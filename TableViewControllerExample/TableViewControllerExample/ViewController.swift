//
//  ViewController.swift
//  TableViewControllerExample
//
//  Created by Peipei Yu on 1/28/22.
//

import UIKit
/*
 1. Add a table view to the story board
 2. Add a table view cell to the table view
 3. Create indentifiew for table view cell and call it "cell"
 4. Create Outlet of tableview to the code call the table view as "tblView"
 5. Add protocols UITableView, UITableViewDataSource t othe class
 6. Add functions for table view numberofRowsInSection and cellForRowAt
 7. in view did load add tblViews.delegate = self and tblView.dataSource = self
 8. create an arrat for data values
 9. return array count in numberofRowsInSection functions
 10. fell the cellForRowAt function
 */

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
   
    @IBOutlet weak var tbl_View: UITableView!
    
    let images = ["food1", "food2", "food3", "food4", "food5", "food6", "food7", "food8", "food9", "food10" ]
    let foodNames = ["image1", "image2", "image3", "image4", "image5", "image6", "image7", "image8", "image9", "image10" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // control the table view
        tbl_View.delegate = self
        tbl_View.dataSource = self
        tbl_View.rowHeight = UITableView.automaticDimension
        tbl_View.estimatedRowHeight = 400
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.Img_View.image = UIImage(named: images[indexPath.row])
        cell.lbl_Cell.text = foodNames[indexPath.row]
        
        return cell
    }
    
    

}
//        cell.textLabel?.text = arr[indexPath.row]

