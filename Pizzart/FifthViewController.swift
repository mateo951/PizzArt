//
//  FifthViewController.swift
//  Pizzart
//
//  Created by Mateo Villagomez on 16/11/15.
//  Copyright © 2015 Mateo Villagomez. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var ingredientsPicker: UIPickerView!
    
    var pickerData: [[String]] = [[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.ingredientsPicker.delegate = self
        self.ingredientsPicker.dataSource = self
        
        // Input data into the Array:
        pickerData = [["Tomatoes", "Ham", "Pepperoni", "Olives", "Sasauge"],
                     ["Pepperoni", "Meat", "Extra Cheese", "BQ Chicken",""],
                     ["Olives", "Ham", "Meat", "Tomatoes", "Pepper"]]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }
}
