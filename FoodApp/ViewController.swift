//
//  ViewController.swift
//  FoodApp
//
//  Created by Michał Woś on 08.11.2017.
//  Copyright © 2017 Michał Woś. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var cvListOfFoods: UICollectionView!
    var listOfFoods = [Food]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFoodsFromPropertyList()
        cvListOfFoods.delegate = self
        cvListOfFoods.dataSource = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func loadFoodsFromPropertyList(){
        let path = Bundle.main.path(forResource: "Foods", ofType: "plist")! as String
        let url = URL(fileURLWithPath: path)
        
        do{
            let data = try Data(contentsOf:url)
            let plist = try PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil)
            let discArray = plist as![[String:String]]
            
            for food in discArray{
                    print(food["Name"]!)
               
                    listOfFoods.append(Food(name: food["Name"]!, des: food["Des"]!, image: food["Image"]!))
            }
           
        }
        catch{
            print("cannot read file")
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listOfFoods.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellFood: CVCFood = collectionView.dequeueReusableCell(withReuseIdentifier: "cellFood", for: indexPath) as! CVCFood
        cellFood.setFood(food: listOfFoods[indexPath.row])
        return cellFood
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDeatalis", sender: listOfFoods[indexPath.row])
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDeatalis"{
        if let dis = segue.destination as? VCFoodDetalis{
            if let food = sender as? Food{
                dis.food = food
            }
        }
        }
        
    }

}

