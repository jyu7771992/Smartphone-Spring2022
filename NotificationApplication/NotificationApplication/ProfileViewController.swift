//
//  ProfileViewController.swift
//  NotificationApplication
//
//  Created by Peipei Yu on 2/22/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveName(_ sender: Any) {
        guard let firstName = txtFirstName.text else{return}
        guard let lastName = txtLastName.text else {
            return
        }
        
        //send data to people
        let firstAndLastName: [String : String] = ["FirstName": firstName, "LastName": lastName]
        NotificationCenter.default.post(name: nameNotif, object: nil, userInfo: firstAndLastName) // HashSet
        //send message
        self.navigationController?.popViewController(animated: true)
    }
    
}
