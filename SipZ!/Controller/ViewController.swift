//
//  ViewController.swift
//  SipZ!
//
//  Created by McKinney family  on 4/3/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var twoImage: UIImageView!
    @IBOutlet var sipzLabel: UILabel!
    @IBOutlet var pleasdrinkLabel: UILabel!
    @IBOutlet var responsibilityLabel: UILabel!
    @IBOutlet var welcomeToSipzLabel: UIButton!
    @IBOutlet var pleaseJoinLabel: UIButton!
    @IBOutlet var pressWelcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func welcomeToSipzButton(_ sender: Any) {
        twoImage.isHidden = false
        sipzLabel.isHidden = false
        pleasdrinkLabel.isHidden = false
        responsibilityLabel.isHidden = false
        pleaseJoinLabel.isHidden = false
        welcomeToSipzLabel.isHidden = true
        pressWelcomeLabel.isHidden = true
        
        
        
        
    }
    
   
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

