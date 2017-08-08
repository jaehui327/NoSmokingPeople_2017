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
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
         observeKeyBoardNotification()
        
    }
    
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

extension SmokingCheckViewController{
   
    fileprivate func observeKeyBoardNotification(){
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    func keyboardHide(){
        //        self.view.frame.height
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping:1, initialSpringVelocity: 1 ,options: .curveEaseOut, animations: {
            
            self.view.frame = CGRect(x:0, y:0, width:self.view.frame.width, height: self.view.frame.height)
        }, completion: nil)
        
        print("키보드가 보여진다")
    }
    
    func keyboardShow(){
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1 ,options: .curveEaseOut, animations: {
            self.view.frame = CGRect(x:0, y:-100, width:self.view.frame.width, height:self.view.frame.height)
        }, completion: nil)
        
        print("키보드가 사라진다")
    }
    
}
