//
//  ViewController.swift
//  tippy
//
//  Created by Jeffrey Shao on 12/18/16.
//  Copyright © 2016 Jeffrey Shao. All rights reserved.
//
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalLabel2: UILabel!
    @IBOutlet weak var totalLabel3: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var blueBox: UILabel!
    @IBOutlet weak var tipsy: UILabel!
    @IBOutlet weak var guy1: UIImageView!
    @IBOutlet weak var guy2_1: UIImageView!
    @IBOutlet weak var guy2_2: UIImageView!
    @IBOutlet weak var guy3_1: UIImageView!
    @IBOutlet weak var guy3_2: UIImageView!
    @IBOutlet weak var guy3_3: UIImageView!
    @IBOutlet weak var people1: UILabel!
    @IBOutlet weak var people2: UILabel!
    @IBOutlet weak var people3: UILabel!

    var selected = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
        self.tipControl.alpha = 0
        self.blueBox.alpha = 0
        self.tipLabel.alpha = 0
        self.totalLabel.alpha = 0
        self.totalLabel2.alpha = 0
        self.totalLabel3.alpha = 0
        self.people1.alpha = 0
        self.people2.alpha = 0
        self.people3.alpha = 0
        self.tipsy.alpha = 0
        self.guy1.alpha = 0
        self.guy2_1.alpha = 0
        self.guy2_2.alpha = 0
        self.guy3_1.alpha = 0
        self.guy3_2.alpha = 0
        self.guy3_3.alpha = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        
        let defaults = UserDefaults.standard
        selected = defaults.integer(forKey: "selected")
        tipControl.selectedSegmentIndex = selected
        
    }
    
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 0.3, delay: 0,options: [], animations: ({
            
            self.billField.center.y = 170
            
        }), completion: nil)
        
        UIView.animate(withDuration: 0.32, delay: 0,options: [], animations: ({
            
            self.tipControl.center.y = 220
            self.tipControl.alpha = 1
            
            self.blueBox.center.y = 440
            self.blueBox.alpha = 1
            
            self.tipLabel.center.y = 280
            self.tipLabel.alpha = 1
            
            self.tipsy.center.y = 280
            self.tipsy.alpha = 1
            
            self.totalLabel.center.y = 320
            self.totalLabel.alpha = 1
            
            self.guy1.center.y = 320
            self.guy1.alpha = 1
            
            self.people1.center.y = 320
            self.people1.alpha = 1
            
            self.totalLabel2.center.y = 370
            self.totalLabel2.alpha = 1
            
            self.guy2_1.center.y = 370
            self.guy2_1.alpha = 1
            
            self.guy2_2.center.y = 370
            self.guy2_2.alpha = 1
            
            self.people2.center.y = 370
            self.people2.alpha = 1
            
            self.totalLabel3.center.y = 420
            self.totalLabel3.alpha = 1
            
            self.guy3_1.center.y = 420
            self.guy3_1.alpha = 1
            
            self.guy3_2.center.y = 420
            self.guy3_2.alpha = 1
            
            self.guy3_3.center.y = 420
            self.guy3_3.alpha = 1
            
            self.people3.center.y = 420
            self.people3.alpha = 1
            
        }), completion: nil)
        
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]

        
        let total1 = bill + tip
        let total2 = total1 / 2
        let total3 = total1 / 3

        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total1)
        totalLabel2.text = String(format:"$%.2f", total2)
        totalLabel3.text = String(format:"$%.2f", total3)
        
        
        if(billField.text == ""){
            
            UIView.animate(withDuration: 0.3, delay: 0,options: [], animations: ({
                
                self.billField.center.y = 300
                
            }), completion: nil)
            
            UIView.animate(withDuration: 0.2, delay: 0,options: [], animations: ({
                
                self.tipControl.center.y = 350
                self.tipControl.alpha = 0
                
                self.blueBox.center.y = 800
                self.blueBox.alpha = 0
                
                self.tipLabel.center.y = 410
                self.tipLabel.alpha = 0
                
                self.tipsy.center.y = 410
                self.tipsy.alpha = 0
                
                self.totalLabel.center.y = 450
                self.totalLabel.alpha = 0
                
                self.guy1.center.y = 450
                self.guy1.alpha = 0
                
                self.people1.center.y = 450
                self.people1.alpha = 0
                
                self.totalLabel2.center.y = 500
                self.totalLabel2.alpha = 0
                
                self.guy2_1.center.y = 500
                self.guy2_1.alpha = 0
                
                self.guy2_2.center.y = 500
                self.guy2_2.alpha = 0
                
                self.people2.center.y = 500
                self.people2.alpha = 0
                
                self.totalLabel3.center.y = 550
                self.totalLabel3.alpha = 0
                
                self.guy3_1.center.y = 550
                self.guy3_1.alpha = 0
                
                self.guy3_2.center.y = 550
                self.guy3_2.alpha = 0
                
                self.guy3_3.center.y = 550
                self.guy3_3.alpha = 0
                
                self.people3.center.y = 550
                self.people3.alpha = 0
                
            }), completion: nil)
            
        }
        
        
    }
    

}

/*
 @IBAction func on_Tap(_ sender: AnyObject) {
 
 view.endEditing(true)
 UIView.animate(withDuration: 0.3, delay: 0,options: [], animations: ({
 
 self.billField.center.y = 170
 self.tipControl.center.y = 220
 
 }), completion: nil)
 
 UIView.animate(withDuration: 0.5, delay: 0,options: [], animations: ({
 
 self.tipControl.alpha = 0
 
 }), completion: nil)
 
 }
 */

/*
 
 @IBAction func touched(_ sender: AnyObject) {
 UIView.animate(withDuration: 0.3, delay: 0,options: [], animations: ({
 
 self.billField.center.y = 100
 self.tipControl.center.y = 150
 
 }), completion: nil)
 
 
 UIView.animate(withDuration: 0.3, delay: 0,options: [], animations: ({
 
 self.tipControl.alpha = 1
 
 }), completion: nil)
 }
 
 */


/*
 UIView.animate(withDuration: 0.3, delay: 0,options: [], animations: ({
 
 self.billField.center.y = 100
 
 }), completion: nil)
 */
