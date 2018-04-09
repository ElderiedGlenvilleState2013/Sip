//
//  listViewController.swift
//  SipZ!
//
//  Created by McKinney family  on 4/5/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class listViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   

    @IBOutlet var listStoreTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        listStoreTableView.delegate = self
        listStoreTableView.dataSource = self
        
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

    @IBAction func unwindFromTermsAndConditions(unwindNewSegue: UIStoryboardSegue) {
        
        
    }
    
    
    
    
    
    
     public func numberOfSections(in tableView: UITableView) -> Int {
        
        return 4
        
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 180
        
        
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! listTableViewCell
        
        cell.storeListImage.image = UIImage(named: "Bunghole")
        
        cell.priceAndStoreNameLabel.text = "Store one $12.00min"
        
        
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
        
    }
    
}

