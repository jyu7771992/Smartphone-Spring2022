//
//  ViewController.swift
//  NotificationApplication
//
//  Created by Peipei Yu on 2/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblFirstName: UILabel!
    
    let nameNotif = Notification.Name(nameNotification)
    
    //remeber to call deinit
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subscribeToNotification()
    }

    @IBAction func gotoProfile(_ sender: Any) {
        performSegue(withIdentifier: "segueProfile", sender: self)
    }
    @IBAction func gotoTaxInfo(_ sender: Any) {
        performSegue(withIdentifier: "segueFormEntry", sender: self)
    }
    
    func subscribeToNotification(){
        NotificationCenter.default.addObserver(self, selector: #selector(getFirstName), name: nameNotif, object: nil)
    }
    
    @objc func getFirstName(notif: NSNotification){
        print("I have subscribed!")
        
        if let dict = notif.userInfo as NSDictionary? {
            if let firstName = dict["FirstName"] as? String{
                lblFirstName.text = firstName
            }
            if let lastName = dict["FirstName"] as? String{
                lblLastName.text = lastName
            }
        }
    }
}

