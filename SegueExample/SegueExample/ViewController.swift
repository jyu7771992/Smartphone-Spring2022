//
//  ViewController.swift
//  SegueExample
//
//  Created by Peipei Yu on 2/15/22.
//

import UIKit

class ViewController: UIViewController {
    //connect the mainboard of UI
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPwd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToSecondController(_ sender: Any) {
        performSegue(withIdentifier: "sequeToSecondVC", sender: self) // avoid to text the name of withIdentifier with madotory, copy the name of link and paste it
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sequeToSecondVC" {
            let secondVC = segue.destination as!SecondViewController // define the way of segue identifier is going to the SecondViewController
            //show the label of informaiton in the secondView
            secondVC.welcomeStr = "Welcome, \(txtUserName.text!)."
            secondVC.pwdInfoStr = "Your password: \(txtPwd.text!). Please rebember it when you login next time."
        }
    }
    
}

