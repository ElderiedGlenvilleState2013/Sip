//
//  storeInfoViewController.swift
//  SipZ!
//
//  Created by McKinney family  on 4/5/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class storeInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var storeInfoTableVC: UITableView!
    
    private(set) public var product = [DrinkProduct]()
    
    @IBOutlet var phoneButton: UIButton!
    
    @IBAction func numberButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Phone Number", message: "248-915-9809", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Call Store", style: .default, handler: { (ACTION) in
            
            print("button pressed")
            
           
            
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storeInfoTableVC.dataSource = self
        storeInfoTableVC.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initDrinkProduct(store: Store) {
        product = DataService.instance.getDrinkProduct(forDrinkTitle: store.title)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return product.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Drink Cell", for: indexPath) as? drinksCell {
        let products = product[indexPath.row]
            cell.updateViews(drinkProduct: products)
            return cell
        
    }
        
     return drinksCell()
        
}
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
        
        
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
