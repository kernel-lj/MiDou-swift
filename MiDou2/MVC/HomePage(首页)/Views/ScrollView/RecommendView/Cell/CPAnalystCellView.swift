//
//  CPAnalystCellView.swift
//  MiDou2
//
//  Created by LTL on 16/5/4.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//

import UIKit

class CPAnalystCellView: UIView {

    var imageView:UIImageView!
    var memberImageView:UIImageView!
    var button:UIButton!
    var label:UILabel!
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addViews() {
        
        //1.头像图片
        imageView = UIImageView.init()
        imageView.radiusWith(20, backgroundImage: UIImage.init(named: "myDog.jpeg"))


        
        //2.黄V图片
        memberImageView = UIImageView.init()
        memberImageView.image = TL_IMAGE("黄V")

        //3.添加按钮
        button = UIButton.init()
        button.setTitle("30中15", forState: .Normal)
        button.backgroundColor = UIColor(hexString:DEFALUT_RED as String )
        button.titleLabel?.font = TL_FONT(10)
        button.setBackgroundImage(TL_IMAGE("大咖圆角"), forState: .Normal)
        
        //4.添加label
        label = UILabel.init()
        label.text = "我是卡西利亚斯基"
        label.font = TL_FONT(11)
        label.textColor = UIColor(hexString: DEFALUT_BLACK as String)
        label.textAlignment = .Center
        
        
        self.addSubview(imageView)
        self.addSubview(memberImageView)
        self.addSubview(button)
        self.addSubview(label)
        
    }
    
    override func layoutSubviews() {
        
        
        let leftSpace:CGFloat = 10;
        let horSpace:CGFloat = 2 //横向间距
        let cellWith:CGFloat = (WScreen - leftSpace * 2 - horSpace * 3) / 4
        let cellHeight:CGFloat = (183 - 45) / 2
        
        imageView.frame = CGRectMake((cellWith - cellHeight * 4 / 7) / 2, 0, cellHeight * 4 / 7, cellHeight * 4 / 7)
        
        memberImageView.frame = CGRectMake(tl_x(imageView) + tl_w(imageView) - 15, tl_y(imageView) + tl_h(imageView) - 15, 15, 15)


        button.frame =  CGRectMake(tl_x(imageView), tl_h(imageView) + 2, cellHeight * 4 / 7, 14)
        label.frame = CGRectMake(0, cellHeight * 4 / 7 + 4, cellWith, cellHeight * 4 / 7)
        
        
        
    }

}
