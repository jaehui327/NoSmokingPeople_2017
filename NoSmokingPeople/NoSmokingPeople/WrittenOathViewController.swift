//
//  WrittenOathViewController.swift
//  NoSmokingPeople
//
//  Created by 김재희 on 2017. 7. 20..
//  Copyright © 2017년 김재희. All rights reserved.
//

import UIKit

class WrittenOathViewController: UIViewController, UITextFieldDelegate {
  

    @IBOutlet weak var WrittenOathView: UIView!

    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var DateTextField: UITextField!
    
    @IBAction func textFieldEditingDidChange(sender: UITextField) {
        
        print("textField: \(DateTextField.text!)")
        
        if ((DateTextField.text) != nil) {
            DateTextField.backgroundColor = UIColor(hex: 0x98B9C9)
        } else {
            DateTextField.backgroundColor = UIColor.white
        }
    }
    
    
    @IBAction func DatetextFieldEditing(_ sender: UITextField) {
        let datePickerView:UIDatePicker = UIDatePicker()
        datePickerView.datePickerMode = UIDatePickerMode.date
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: #selector(WrittenOathViewController.datePickerValueChanged), for: UIControlEvents.valueChanged)
    }
    
    func datePickerValueChanged(sender:UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.medium
        dateFormatter.timeStyle = DateFormatter.Style.none
        dateFormatter.dateFormat = "yyyy년 MM월 dd일"
        DateTextField.text = dateFormatter.string(from: sender.date)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let logo = UIImage(named: "invalidName")
        let imageView = UIImageView(image: logo)
        self.navigationItem.titleView = imageView

        NameTextField.delegate = self
        DateTextField.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        NameTextField.resignFirstResponder()
        DateTextField.resignFirstResponder()
        return true
    }

    @IBAction func viewDidTapped(_ sender: Any) {
        view.endEditing(true)
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

}
