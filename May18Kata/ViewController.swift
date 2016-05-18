//
//  ViewController.swift
//  May18Kata
//
//  Created by Allen Spicer on 5/18/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var xVariable: UITextField!
    @IBOutlet var yVariable: UITextField!
    var holderLabel = UILabel.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func button(sender: AnyObject) {
        
        if (Int(xVariable.text!) != nil && Int(yVariable.text!) != nil){
        
        var x = Int(xVariable.text!)
        let xSub = x
        var y = Int(yVariable.text!)
        
        while (y>0){
        
                while (x>0) {
                    
                labelCreator(x!,b:y!)
                    x = x!-1
                }
            x = xSub
         y = y!-1
        }
    }
}
    
    func labelCreator(a:Int, b:Int){
        let a10 = CGFloat(a*15)
        let b10 = CGFloat(b*15)
        let labelPlacement = CGRectMake(a10, b10, 50, 50)
        let newLabel = UILabel.init()
        newLabel.frame = labelPlacement
        newLabel.text = "A"
        self.view.insertSubview(newLabel, atIndex:a)
        holderLabel = newLabel

    }

    @IBAction func clearLabels(sender: UIButton) {
        holderLabel.removeFromSuperview()
        
        
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

