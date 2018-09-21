//
//  VCFoodDetalis.swift
//  FoodApp
//
//  Created by Michał Woś on 11.11.2017.
//  Copyright © 2017 Michał Woś. All rights reserved.
//

import UIKit

class VCFoodDetalis: UIViewController {

    
    @IBOutlet weak var iv_FoodImage: UIImageView!
    
    @IBOutlet weak var iv_FoodName: UILabel!
    @IBOutlet weak var iv_FoodDesc: UITextView!
    
    var food:Food?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iv_FoodName.text = food?.name!
        iv_FoodDesc.text = food?.des!
        iv_FoodImage.image = UIImage(named: (food?.image!)!)
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
    @IBAction func buBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
