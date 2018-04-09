//
//  termsandconditionViewController.swift
//  SipZ!
//
//  Created by McKinney family  on 4/4/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class termsandconditionViewController: UIViewController {

    @IBAction func noButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Are Sure Don't Agree ", message: "To our terms and Conditions", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Are you sure?", style: .default, handler: {(action) in
            
            print("Button Press is no")
            
            self.dismiss(animated: true, completion: nil)
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
