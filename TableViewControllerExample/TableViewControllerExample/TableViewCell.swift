//
//  TableViewCell.swift
//  TableViewControllerExample
//
//  Created by Peipei Yu on 2/8/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var Img_View: UIImageView!
    @IBOutlet weak var lbl_Cell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
