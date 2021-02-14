//
//  ViewController.swift
//  HorizontalCollectionView
//
//  Created by 김유진 on 2021/02/14.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let nameArr: [String] = ["yooooouujin", "hajunn02", "minhukkk0","yooooouujin", "hajunn02", "minhukkk0","yooooouujin", "hajunn02", "minhukkk0"]
    
    let images: Array = ["image1","image2.png","image3.png","image1.png","image5.png","image1.png","image2.png","image3.png","image5.png"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.name.text = nameArr[indexPath.row]
        
        cell.profileImage.image = UIImage(named: images[indexPath.row])
        
        return cell
    }
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.showsHorizontalScrollIndicator = false
    }


}

