//
//  SmokingCheckViewController.swift
//  NoSmokingPeople
//
//  Created by 김재희 on 2017. 7. 20..
//  Copyright © 2017년 김재희. All rights reserved.
//

import UIKit

class SmokingCheckViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var SmokingCheckView: UIView!
    
   
    @IBOutlet weak var SYTextField: UITextField!
    @IBOutlet weak var SNTextField: UITextField!
    @IBOutlet weak var SPTextField: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let logo = UIImage(named: "invalidName")
        let imageView = UIImageView(image: logo)
        self.navigationItem.titleView = imageView
        
        SYTextField.delegate = self
        SNTextField.delegate = self
        SPTextField.delegate = self
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        SYTextField.resignFirstResponder()
        SNTextField.resignFirstResponder()
        SPTextField.resignFirstResponder()
        return true
    }

   
    @IBAction func viewDidTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
 
    
     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}

