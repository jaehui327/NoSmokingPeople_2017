//
//  HealthViewController.swift
//  NoSmokingPeople
//
//  Created by 김재희 on 2017. 8. 9..
//  Copyright © 2017년 김재희. All rights reserved.
//

import UIKit

class HealthViewController: UIViewController {

    @IBOutlet weak var HealthCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let logo = UIImage(named: "invalidName")
        let imageView = UIImageView(image: logo)
        self.navigationItem.titleView = imageView
        
        self.HealthCollectionView.delegate = self
        self.HealthCollectionView.dataSource = self
        
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

extension HealthViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 4
        default:
            return 3
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let cell = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "HealthHeaderCollectionCell", for: indexPath) as! HealthHeaderCollectionViewCell
        
        switch indexPath.section {
        case 0:
            cell.headertitle.text = "다시 찾은 건강"
            break
        default:
            cell.headertitle.text = "절약한 물품"
            break
        }
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HealthCollectionCell", for: indexPath) as! HealthCollectionViewCell
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                cell.mainimage.image = UIImage(named: "img20M")
                cell.titlelabel.text = "20분 후"
                cell.subtitle.text = "혈압과 맥박이 정상으로 돌아옵니다."
                break
            case 1:
                cell.mainimage.image = UIImage(named: "img12H")
                cell.titlelabel.text = "12시간 후"
                cell.subtitle.text = "혈액 속의 산소량이 정상으로 올라갑니다."
                break
            case 2:
                cell.mainimage.image = UIImage(named: "img2W")
                cell.titlelabel.text = "2주 후"
                cell.subtitle.text = "혈액순환이 좋아지고 폐기능이 좋아집니다."
                break
            case 3:
                cell.mainimage.image = UIImage(named: "img5W")
                cell.titlelabel.text = "5주 후"
                cell.subtitle.text = "기침이 줄어들고 숨쉬기 편안해집니다."
                break
            default:
                break
            }
            break
            
        default:
            switch indexPath.row {
            case 0:
                cell.mainimage.image = UIImage(named: "imgDay1")
                cell.titlelabel.text = "1일 : 햄버거 세트메뉴"
                cell.subtitle.text = "4,500원"
                break
            case 1:
                cell.mainimage.image = UIImage(named: "imgDay3")
                cell.titlelabel.text = "3일 : 영화관"
                cell.subtitle.text = "13,000원"
                break
            case 2:
                cell.mainimage.image = UIImage(named: "imgDay7")
                cell.titlelabel.text = "7일 : 놀이공원 자유이용권"
                cell.subtitle.text = "35,000원"
                break
            default:
                break
            }

            break
        }
        
        cell.layer.cornerRadius = 5
        
        return cell
    }
    
}















