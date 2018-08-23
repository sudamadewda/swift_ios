//
//  ViewController.swift
//  delegateDemo
//
//  Created by sudama dewda on 23/08/18.
//  Copyright © 2018 vatsana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, dataParssing {
   
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func data(name: String, address: String, city: String) {
//        lblName.text = name
//        lblAddress.text = address
//        lblCity.text = city
//    }
    
    func data(objec: [String : String]) {
        lblName.text = objec["name"]
        lblAddress.text = objec["address"]
        lblCity.text = objec["city"]
    }

    @IBAction func goToNextController(_ sender: Any) {
        
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "secondvViewController") as! secondvViewController
        self.navigationController?.pushViewController(secondVC, animated: true)
        secondVC.delegate = self
        
    }
    
}

