//
//  Food.swift
//  FoodApp
//
//  Created by Michał Woś on 08.11.2017.
//  Copyright © 2017 Michał Woś. All rights reserved.
//

import UIKit

class Food: NSObject {
    var name:String?
    var des:String?
    var image:String?
    
    
    init(name:String, des:String, image:String ) {
        self.name = name
        self.des = des
        self.image = image
    }
}
