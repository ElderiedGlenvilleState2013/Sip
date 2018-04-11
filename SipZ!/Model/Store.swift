//
//  Store.swift
//  SipZ!
//
//  Created by McKinney family  on 4/10/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import Foundation

struct Store {
    
    private(set) public var title: String
    private(set) public var imageName: String
    
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
        
    }
    
    
}
