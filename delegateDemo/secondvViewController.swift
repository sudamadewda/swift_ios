//
//  secondvViewController.swift
//  delegateDemo
//
//  Created by sudama dewda on 23/08/18.
//  Copyright © 2018 vatsana. All rights reserved.
//

import UIKit

protocol dataParssing {
  //  func data(name: String, address: String, city: String)
    func data(objec :[String: String])
}

class secondvViewController: UIViewController {
   

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    
    var delegate: dataParssing!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(_ sender: Any) {
        let dict: [String: String] = ["name": txtName.text!,"address": txtAddress.text!, "city": txtCity.text! ]
        delegate.data(objec: dict)
        //delegate.data(name: txtName.text!, address: txtAddress.text!, city: txtCity.text!)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
