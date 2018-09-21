//
//  CVCFood.swift
//  FoodApp
//
//  Created by Michał Woś on 08.11.2017.
//  Copyright © 2017 Michał Woś. All rights reserved.
//

import UIKit

class CVCFood: UICollectionViewCell {
    
    @IBOutlet weak var iv_FoodImage: UIImageView!
    @IBOutlet weak var iv_FoodName: UILabel!
    
    func setFood(food: Food){
        iv_FoodImage.image = UIImage(named: food.image!)
        iv_FoodName.text = food.name!
        
        
    }
    
}
