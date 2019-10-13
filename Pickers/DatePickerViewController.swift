//
//  DatePickerViewController.swift
//  Pickers
//
//  Created by Angadjot singh on 12/10/19.
//  Copyright © 2019 Angadjot singh. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let date = NSDate()
        datePicker.setDate(date as Date, animated: true)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func onButtonPressed(_ sender: UIButton) {

         let date = datePicker.date
         let mess = "The date and time you selected is \(date)"
         let alert = UIAlertController(title: "Message", message: mess, preferredStyle: .alert)
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
