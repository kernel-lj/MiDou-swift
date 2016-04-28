//
//  CPHomePageScrollView.swift
//  MiDou2
//
//  Created by LTL on 16/4/28.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//

import UIKit

class CPHomePageScrollView: UIScrollView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    var srollViewDelegate:ScrollViewDelegate!
    
    init(vc:UIViewController){
        super.init(frame: Rect(0, y: 64, width: WScreen, height: HScreen - 64))
        self.pagingEnabled = true;
        self.contentSize =  CGSizeMake(WScreen * 5, HScreen - 64);
        vc.view.addSubview(self)
        
        srollViewDelegate = ScrollViewDelegate.init(scrollView: self)
//        _srollViewDelegate = [[CPHomPageSrollViewDelegate alloc] initWithScrollView:self];
//        [self addSubViews];
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
