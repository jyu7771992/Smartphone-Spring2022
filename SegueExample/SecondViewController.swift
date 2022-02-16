//
//  SecondViewController.swift
//  SegueExample
//
//  Created by Peipei Yu on 2/16/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var lblpwdInfo: UILabel!
    var welcomeStr = ""
    var pwdInfoStr = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //define the label text is assign to the variable welcomeStr
        lblWelcome.text = welcomeStr
        lblpwdInfo.text = pwdInfoStr
        
    }
    

    @IBAction func goBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
