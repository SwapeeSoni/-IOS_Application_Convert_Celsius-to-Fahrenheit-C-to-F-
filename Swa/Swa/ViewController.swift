//
//  ViewController.swift
//  Swa
//
//  Created by Kuldeep Swapnil on 27/04/20.
//  Copyright © 2020 Kuldeep Swapnil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Conver: UILabel!
    @IBOutlet weak var TemperatureEntry: UITextField!
    @IBOutlet weak var TemperatureResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    var count = 0;
    
    
    @IBAction func ConvertButton(_ sender: Any) {
        Conver.text = String(count)
        if let result = TemperatureEntry.text{
            if (result == ""){
               // count =  count + 1
                //Conver.text = String(count)
                return
            }
            else {
                if let num = Double(result){
                    let output = num * (9/5) + 32
                    count =  count + 1
                    Conver.text = String(count)
                    TemperatureResult.text = String(output)
                }
                
                
                
            }
            
        }
    }
    
    
}

