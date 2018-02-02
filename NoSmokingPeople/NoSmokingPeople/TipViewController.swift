//
//  TipViewController.swift
//  NoSmokingPeople
//
//  Created by 김재희 on 2017. 8. 9..
//  Copyright © 2017년 김재희. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    @IBOutlet weak var TipCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let logo = UIImage(named: "invalidName")
        let imageView = UIImageView(image: logo)
        self.navigationItem.titleView = imageView
        
        self.TipCollectionView.delegate = self
        self.TipCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnMenuPressed(_ sender: Any) {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        appDel.drawerController.setDrawerState(.opened, animated: true)
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

extension TipViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TipCollectionCell", for: indexPath) as! TipCollectionViewCell
        
        switch indexPath.row {
        case 0:
            cell.titleimage.image = UIImage(named : "appcenter")
            cell.titlelabel.text = "앱센터 짱짱맨"
            break
        default:
            cell.titleimage.image = UIImage(named : "appcenter")
            cell.titlelabel.text = "앱센터 짱짱맨"
            break
        }
        
        cell.layer.cornerRadius = 5
        
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOpacity = 0.7
        cell.layer.shadowRadius = 3
        cell.layer.masksToBounds = false

        return cell
        
    }
    
    
    
}







