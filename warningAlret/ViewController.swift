//
//  ViewController.swift
//  warningAlret
//
//  Created by UrataHiroki on 2021/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    var textContents = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.addTarget(self, action: #selector(judgeText), for: .editingChanged)
    }
    
    @objc func judgeText(sender:UITextField){
        
        if sender.text?.count == 4{
            
            judge(judgeTarget: sender.text!)
            
        }
        
    }
    
    func judge(judgeTarget:String){
        
        textContents = []
        
        for text in judgeTarget{
            
            textContents.append(String(text))
        }
        
        switch Int(textContents[0])! < Int(textContents[3])!{
        
        case true:
            <#code#>
        case false:
            <#code#>
        }
        
        
//        if Int(judgeTarget.prefix(2).suffix(1)) == Int(judgeTarget.prefix(1))! + 1 && Int(judgeTarget.prefix(3).suffix(1)) == Int(judgeTarget.prefix(2).suffix(1))! + 1 &&
//            Int(judgeTarget.suffix(1)) == Int(judgeTarget.prefix(3).suffix(1))! + 1{
//
//            alert()
//
//        }else if Int(judgeTarget.prefix(2).suffix(1)) == Int(judgeTarget.prefix(1))! - 1 && Int(judgeTarget.prefix(3).suffix(1)) == Int(judgeTarget.prefix(2).suffix(1))! - 1 && Int(judgeTarget.suffix(1)) == Int(judgeTarget.prefix(3).suffix(1))! - 1{
//
//            alert()
//
//        }else if judgeTarget.prefix(1) == judgeTarget.prefix(2).suffix(1) && judgeTarget.prefix(1) == judgeTarget.prefix(3).suffix(1) && judgeTarget.prefix(1) == judgeTarget.suffix(1){
//
//            alert()
//        }
        
    }
    
    func alert(){
        
        let alert = UIAlertController(title: "連番です", message: "連番だけど大丈夫かな？", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "キャンセル", style: .cancel, handler: nil))
        
        self.present(alert, animated:true, completion: nil)
    }
}

