//
//  ViewController.swift
//  warningAlret
//
//  Created by UrataHiroki on 2021/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.addTarget(self, action: #selector(judgeText), for: .valueChanged)
    }

    @objc func judgeText(sender:UITextField){
        
        if sender.text?.count == 4{
            
        }
        
    }
    
    func judge(judgeTarget:String){
        
        
    }
}

