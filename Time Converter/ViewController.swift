//
//  ViewController.swift
//  Time Converter
//
//  Created by Koppula,Gunashekar on 9/6/19.
//  Copyright © 2019 BearCat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearsTF:UITextField!
    
    @IBOutlet weak var monthsTF: UILabel!
    @IBOutlet weak var daysTF: UILabel!
    @IBOutlet weak var secondsTF: UILabel!
    
    @IBAction func convert(_ sender:UIButton){
        
        //let years:Int? =
        
        if let years = Int(yearsTF.text!){
            
            let months = years * 12
            let days = months * 30
            let seconds = days * 3600 * 24
            monthsTF.text = "\(months)"
            daysTF.text = "\(days)"
            secondsTF.text = "\(seconds)"
            
        }
        else{
            
            let ac = UIAlertController(title:"Missing Years", message:"",
                                   preferredStyle: .alert)
            let action = UIAlertAction(title:"OK", style: .default, handler: nil)
            ac.addAction(action)
            present(ac,animated:true,completion: nil)
            
        }
        
       
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title="Time Converter"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Convert", style: .plain, target: self, action: #selector(convert))
        
    }


}

