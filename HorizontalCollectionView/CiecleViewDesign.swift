//
//  CiecleViewDesign.swift
//  HorizontalCollectionView
//
//  Created by 김유진 on 2021/02/14.
//

import UIKit

class CircleViewDesign: UIView {
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.height * 0.5
        self.layer.masksToBounds = false
        self.layer.borderWidth = 1;  // 테두리 두깨
        self.layer.borderColor = UIColor.lightGray.cgColor// 테두리 컬러2
    }
}
