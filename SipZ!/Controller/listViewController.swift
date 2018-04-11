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
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 180
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getStores().count
        
    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? listTableViewCell {
           
            let store = DataService.instance.getStores()[indexPath.row]
            cell.updateViews(store: store)
            return cell
            
        } else {
            return listTableViewCell()
        }
        
       
        
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let stores = DataService.instance.getStores()[indexPath.row]
        
        performSegue(withIdentifier: "storeInfoViewController", sender: stores)
        
    }
    
    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
        if let storeInfoViewController = seque.destination as? storeInfoViewController {
            assert(sender as? Store != nil)
            storeInfoViewController.initDrinkProduct(store: sender as! Store)
        }
    }
}

