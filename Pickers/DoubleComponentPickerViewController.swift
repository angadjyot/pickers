//
//  DoubleComponentPickerViewController.swift
//  Pickers
//
//  Created by Angadjot singh on 12/10/19.
//  Copyright © 2019 Angadjot singh. All rights reserved.
//

import UIKit

class DoubleComponentPickerViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    
    
    @IBOutlet weak var doublepicker: UIPickerView!
    
    let fillingComponent = 0
    let breadComponent = 1
    
    private let fillingTypes = ["Ham","Turkey","Peanut Butter","Tuna Salad"]
    
    private let breadTypes = ["White","Brown","Whole Wheat","Seven Grain"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == breadComponent{
            return breadTypes[row]
        }else{
            return fillingTypes[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == breadComponent{
            return breadTypes.count
        }else{
            return fillingTypes.count
        }
    }

    
    @IBAction func onButtonPressed(_ sender: UIButton) {
       
        let fillingRow = doublepicker.selectedRow(inComponent: fillingComponent)
        let breadRow = doublepicker.selectedRow(inComponent: breadComponent)
        
        let filling = fillingTypes[fillingRow]
        let bread = breadTypes[breadRow]
        let message = "Your \(filling) on \(bread) bread willbe right up"
        
        let alert = UIAlertController(title: "Thanku for your order", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
