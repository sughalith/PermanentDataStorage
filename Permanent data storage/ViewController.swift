//
//  ViewController.swift
//  Permanent data storage
//
//  Created by Arkadiusz Stankiewicz on 30.09.2017.
//  Copyright © 2017 Arkadiusz Stankiewicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var numberField: UITextField!
    @IBAction func save(_ sender: Any) {
        UserDefaults.standard.set(numberField.text, forKey: "number")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let numberObject = UserDefaults.standard.object(forKey: "number")
        if let number = numberObject as? String{
            numberField.text = number
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

