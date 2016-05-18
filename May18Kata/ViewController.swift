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
        let a10 = CGFloat(a*15+50)
        let b10 = CGFloat(b*15+60)
        let labelPlacement = CGRectMake(a10, b10, CGFloat(50), CGFloat(50))
        
        let newLabel = UILabel.init()
        newLabel.frame = labelPlacement
        //substitute A for specific index of array and loop through.
        newLabel.text = "A"
        newLabel.userInteractionEnabled = true
        self.view.insertSubview(newLabel, atIndex:a)
        holderLabel = newLabel

    }

    @IBAction func clearLabels(sender: UIButton) {
        holderLabel.removeFromSuperview()
        
        

    }
    
    
@IBAction func lettersTouched(recognizer:UIPanGestureRecognizer) {
    
    let translation = recognizer.translationInView(self.view)
    print(recognizer.locationInView(self.view))
    print(translation.x)
    print(translation.y)
    
    }
    
    
   // if recognizer.state == UIGestureRecognizerState.Began{


        
        //(x:recognizer.view!.center.x + (velocity.x * slideFactor),y:recognizer.view!.center.y + (velocity.y * slideFactor))
    
    
   // }
    
    

    

    
//    
//    if let view = recognizer.view {
//            view.center = CGPoint(x:view.center.x + translation.x,
//                                  y:view.center.y + translation.y)
//        }
//        recognizer.setTranslation(CGPointZero, inView: self.view)
//    }
    
    
    
    
    
//                var gesture = UIPanGestureRecognizer.init()
//                var startGesture = UIGestureRecognizerState.Began
//                var endGesture = UIGestureRecognizerState.Ended
//                var cancelGesture = UIGestureRecognizerState.Cancelled
//
//    
//    func lettersHit(){
//        
//       
//        
//        
//    }
//        
    
        
        

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

