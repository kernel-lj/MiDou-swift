//
//  CPHomePageScrollView.swift
//  MiDou2
//
//  Created by LTL on 16/4/28.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//

import UIKit

class CPHomePageScrollView: UIScrollView {

  
    var srollViewDelegate:ScrollViewDelegate!
    var recommendView:RecommendView!
    var indemnityView:IndemnityView!
    var siteTableView:SiteTableView!
    var rankView:RankView!
    
    
    init(vc:UIViewController){
        super.init(frame: Rect(0, y: 64, width: WScreen, height: HScreen - 64))
        self.pagingEnabled = true;
        self.contentSize =  CGSizeMake(WScreen * 5, HScreen - 64);
        vc.view.addSubview(self)
        
        srollViewDelegate = ScrollViewDelegate.init(scrollView: self)
        self.addSubviews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        recommendView = RecommendView.init(scrollView: self)
        indemnityView = IndemnityView.init(scrollView: self)
        siteTableView = SiteTableView.init(scrollView: self)
        rankView = RankView.init(scrollView: self)
        
    }
    

}
