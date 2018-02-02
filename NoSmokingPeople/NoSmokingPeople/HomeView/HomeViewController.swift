//
//  HomeViewController.swift
//  NoSmokingPeople
//
//  Created by 김재희 on 2017. 8. 2..
//  Copyright © 2017년 김재희. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var HomeCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        
        let logo = UIImage(named: "invalidName")
        let imageView = UIImageView(image: logo)
        self.navigationItem.titleView = imageView
        
        
        
        self.HomeCollectionView.dataSource = self
        self.HomeCollectionView.delegate = self
        
        
        /*
        let imgIcon = UIImage(named: "btnMenu")?.withRenderingMode(.alwaysOriginal)
        let leftbarButton = UIBarButtonItem(image: imgIcon, style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = leftbarButton
        */

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

extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionCell", for: indexPath) as! HomeCollectionViewCell
        switch indexPath.row {
        case 0:
            cell.imageSign.image = UIImage(named: "imgSign1")
            cell.maintitle.text = "금연중"
            cell.subtitle.text = "00일 00시간 00분 00초"
            break
        case 1:
            cell.imageSign.image = UIImage(named: "imgSign2")
            cell.maintitle.text = "수면연장"
            cell.subtitle.text = "00일 00시간 00분 00초"
            break
        case 2:
            cell.imageSign.image = UIImage(named: "imgSign3")
            cell.maintitle.text = "절약한 담배값"
            cell.subtitle.text = "0000.0원"
            break
        case 3:
            cell.imageSign.image = UIImage(named: "imgSign4")
            cell.maintitle.text = "안피운 담배개비"
            cell.subtitle.text = "0000.0개비"
          break
        default:
            break
        }
        
    
        cell.layer.cornerRadius = 5
        
        /*
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOpacity = 0.5
        cell.layer.shadowRadius = 1
        cell.layer.masksToBounds = false
         */

        
        return cell
        

    }
    
    
}












