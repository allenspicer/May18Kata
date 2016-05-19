//
//  ViewController.swift
//  May18Kata
//
//  Created by Allen Spicer on 5/18/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //allow user to input number of rows and columns
    @IBOutlet var xVariable: UITextField!
    @IBOutlet var yVariable: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad(
        

        
}
    //trigger to create set of labels
    @IBAction func button(sender: AnyObject) {
        
        //if something is input by user
        if (Int(xVariable.text!) != nil && Int(yVariable.text!) != nil){
        
        //change user input to int
        var x = Int(xVariable.text!)!
        var y = Int(yVariable.text!)!

       //store x value for later
        let xSub = x
        
        //loop through y values (columns)
        while (y>0){
            
                //loop through x values (rows). One row for each y value
                while (x>0) {
                
                //each time through fire label creator
                labelCreator(x,b:y)
                    x = x-1
                }
            x = xSub
         y = y-1
        }
    }
}

    
    //take integer form of user input
    func labelCreator(a:Int, b:Int){
        //convert int to float
        let a10 = CGFloat(a*35)
        let b10 = CGFloat(b*35)
        
        //create unique frame on the view using these inputs
        let labelPlacement = CGRectMake(a10, b10, CGFloat(30), CGFloat(30))
        
        //create a label with the frame
        let newLabel = UILabel.init(frame: labelPlacement)
        
//substitute this text for specific index of array and loop through.
        newLabel.text = "A"
        newLabel.userInteractionEnabled = true
        self.view.insertSubview(newLabel, atIndex: a)
    }


//    
//   func  pointInside(point: CGPoint, withEvent event: UIEvent?){
//        
//    }
    
@IBAction func lettersTouched(recognizer:UIPanGestureRecognizer) {
    
    
    
    let placeOnView = recognizer.locationInView(self.view)
    
    switch recognizer.state {
    case .Changed:
        if let subViewTouched = self.view.hitTest(placeOnView, withEvent: nil) as? UILabel {
        subViewTouched.backgroundColor = .redColor()
        print(subViewTouched)
            print(placeOnView) }
    default:
        break
        }
    }



    
    
    
//    if (dictionary.contains(recognizer.locationInView(self.view))){
//        print(recognizer.locationInView(self.view))}
//
//    
//    
//    let translation = recognizer.translationInView(self.view)
//    print("dot")
//    print(recognizer.locationInView(self.view))
////    print(translation)
//   // print(translation.x)
//    // print(translation.y)
//    let possibleCharacters = dictionary
//   // print(dictionary)
//    let pointTouched = recognizer.locationInView(self.view)
//   // print(recognizer.locationInView(self.view))
//     let xint = Int(pointTouched.x)
//    let yint = Int(pointTouched.y)
//    
//    let result = (dictionary as NSDictionary).allKeysForObject("\(xint),\(yint)")
//   // if (result != "[]"){
//        print(result)
//
//   // }
//    
//    
//    }
//
//    class LabelClass: UILabel{
//        
//    }

    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

