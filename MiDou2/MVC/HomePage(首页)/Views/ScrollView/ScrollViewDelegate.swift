//
//  ScrollViewDelegate.swift
//  MiDou2
//
//  Created by LTL on 16/4/28.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//

import UIKit

class ScrollViewDelegate: NSObject , UIScrollViewDelegate {
    
    var aScrollView:UIScrollView!
    
    init(scrollView:UIScrollView) {
        super.init()
        scrollView.delegate = self
        aScrollView = scrollView
        
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
//        var bInt = Int(scrollView.contentOffset.x)
        
        let  currentPage:Int  = (Int(scrollView.contentOffset.x) + Int(tl_w(scrollView) / 2 )) /   Int(tl_w(scrollView))
        
        if (currentPage == 0) {
            
            scrollView.scrollRectToVisible(Rect(0, y: 64, width: WScreen, height: HScreen - 64), animated: true)
            //            [_scrollView setContentOffset:CGPointMake(0,0)];
            scrollView.setContentOffset(CGPointMake(0,0), animated: true)
            TL_NotificationCenter.postNotificationName(ScrollToFirstSrceen, object: nil)
            
        }else if (currentPage == 1) {
            
//            [_scrollView scrollRectToVisible:CGRectMake(WScreen * 1,64,WScreen,HScreen - 64) animated:YES];
            scrollView.scrollRectToVisible(Rect(WScreen * 1, y: 64, width: WScreen, height: HScreen - 64), animated: true)

            //            [_scrollView setContentOffset:CGPointMake(WScreen * 1,0)];
            scrollView.setContentOffset(CGPointMake(WScreen * 1,0), animated: true)

            TL_NotificationCenter.postNotificationName(ScrollToSecondSrceen, object: nil)
            
        }else if (currentPage == 2){
            
            scrollView.scrollRectToVisible(Rect(WScreen * 2, y: 64, width: WScreen, height: HScreen - 64), animated: true)
            
            //            [_scrollView setContentOffset:CGPointMake(WScreen * 2,0)];
            scrollView.setContentOffset(CGPointMake(WScreen * 2,0), animated: true)

            TL_NotificationCenter.postNotificationName(ScrollToThirdSrceen, object: nil)
            
        }else if (currentPage == 3){
            
            scrollView.scrollRectToVisible(Rect(WScreen * 3, y: 64, width: WScreen, height: HScreen - 64), animated: true)
            //            [_scrollView setContentOffset:CGPointMake(WScreen * 3,0)];
            scrollView.setContentOffset(CGPointMake(WScreen * 3,0), animated: true)

            TL_NotificationCenter.postNotificationName(ScrollToFourthSrceen, object: nil)
            
        }else if (currentPage == 4){
            
            scrollView.scrollRectToVisible(Rect(WScreen * 4, y: 64, width: WScreen, height: HScreen - 64), animated: true)
            //            [_scrollView setContentOffset:CGPointMake(WScreen * 4,0)];
            scrollView.setContentOffset(CGPointMake(WScreen * 4,0), animated: true)

            TL_NotificationCenter.postNotificationName(ScrollToFifthSrceen, object: nil)
        }

    }

}
