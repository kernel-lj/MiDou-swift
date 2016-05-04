//
//  CPAnalystContentView.swift
//  MiDou2
//
//  Created by LTL on 16/5/4.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//

import UIKit

class CPAnalystContentView: UIView {

    var view1:CPAnalystCellView!
    var view2:CPAnalystCellView!
    var view3:CPAnalystCellView!
    var view4:CPAnalystCellView!
    var view5:CPAnalystCellView!
    var view6:CPAnalystCellView!
    var view7:CPAnalystCellView!
    var view8:CPAnalystCellView!
    
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        self.addViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addViews() {
        
//        nameView = LoginView.init()
//        nameView.backgroundColor = UIColor.blackColor()
//        self.addSubview(nameView)
        
        view1 = CPAnalystCellView.init()
        view2 = CPAnalystCellView.init()
        view3 = CPAnalystCellView.init()
        view4 = CPAnalystCellView.init()
        view5 = CPAnalystCellView.init()
        view6 = CPAnalystCellView.init()
        view7 = CPAnalystCellView.init()
        view8 = CPAnalystCellView.init()
       
        self.addSubview(view1)
        self.addSubview(view2)
        self.addSubview(view3)
        self.addSubview(view4)
        self.addSubview(view5)
        self.addSubview(view6)
        self.addSubview(view7)
        self.addSubview(view8)
    }
    
    
    override func layoutSubviews() {
        
        
        
//        nameView.frame = CGRectMake(0, 0, 50, 50)
        let leftSpace:CGFloat = 10
        let horSpace:CGFloat = 2 //横向间距
        let verSpace:CGFloat = 15 //纵向间距
        let cellY:CGFloat = 15
        let cellWith:CGFloat = (WScreen - leftSpace * 2 - horSpace * 3) / 4
        let cellHeight:CGFloat = (183 - 45) / 2
        
        
        view1.frame = CGRectMake(leftSpace, cellY, cellWith, cellHeight)
//
        view2.frame = CGRectMake(tl_x(view1) + tl_w(view1) + horSpace, cellY, cellWith, cellHeight);
        view3.frame = CGRectMake(tl_x(view2) + tl_w(view2) + horSpace, cellY, cellWith, cellHeight);
        view4.frame = CGRectMake(tl_x(view3) + tl_w(view3) + horSpace, cellY, cellWith, cellHeight);

        view5.frame = CGRectMake(tl_x(view1), tl_y(view1) + tl_h(view1) + verSpace, cellWith, cellHeight);
        view6.frame = CGRectMake(tl_x(view2), tl_y(view1) + tl_h(view1) + verSpace, cellWith, cellHeight);
        view7.frame = CGRectMake(tl_x(view3), tl_y(view1) + tl_h(view1) + verSpace, cellWith, cellHeight);
        view8.frame = CGRectMake(tl_x(view4), tl_y(view1) + tl_h(view1) + verSpace, cellWith, cellHeight);
        

    }

}
