//
//  SettingsViewController.swift
//  tippy
//
//  Created by Jeffrey Shao on 12/18/16.
//  Copyright © 2016 Jeffrey Shao. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tipControl2: UISegmentedControl!
    @IBOutlet weak var tipStyle: UILabel!
    var selected = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        tipControl2.selectedSegmentIndex = defaults.integer(forKey: "selected")
        tipStyle.text = defaults.string(forKey: "cheeky")
        
    }
    
    @IBAction func changeDefault(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        defaults.set(tipControl2.selectedSegmentIndex, forKey: "selected")
        defaults.synchronize()
        
        if (tipControl2.selectedSegmentIndex == 0){
            tipStyle.text = "normally"
            defaults.set("normally", forKey: "cheeky")
        }
        else if(tipControl2.selectedSegmentIndex == 1){
            tipStyle.text = "above average"
            defaults.set("above average", forKey: "cheeky")
        }
        else if(tipControl2.selectedSegmentIndex == 2){
            tipStyle.text = "generously"
            defaults.set("generously", forKey: "cheeky")
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
