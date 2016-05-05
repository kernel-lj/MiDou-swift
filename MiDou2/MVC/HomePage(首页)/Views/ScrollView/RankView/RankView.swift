//
//  RankView.swift
//  MiDou2
//
//  Created by LTL on 16/5/4.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//

import UIKit

class RankView: UIView {

    var tableView:UITableView!
    
    init(scrollView:UIScrollView){
        super.init(frame: CGRectMake(WScreen * 3, 0, WScreen,  HScreen - 64))
        
        scrollView.addSubview(self)
        
        
        //添加顶部的周榜、月榜
        self.addTopView()
        
        //添加tableView
//        self.addTableView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addTableView() {
    }
    
    func addTopView() {
        
        
        print("1111")
        let view:UIView = UIView.init(frame: CGRectMake(0, 0, WScreen, 40))
        
        //1.添加按钮红色的底线
        let underLine1:UIView = UIView.init(frame: CGRectMake(0, tl_h(view) - 2, WScreen * 0.5, 1))
        underLine1.backgroundColor = UIColor(hexString: DEFALUT_RED as String)
        view.addSubview(underLine1)
        
        let underLine2:UIView = UIView.init(frame: CGRectMake(WScreen * 0.5, tl_h(view) - 2, WScreen * 0.5, 1))
        underLine2.backgroundColor = UIColor(hexString: "#eeeeee")
        view.addSubview(underLine2)
        
        
        //2.添加第一个按钮
        let btn1:UIButton = UIButton.init(frame: CGRectMake(0, 0, WScreen * 0.5, 40))
        btn1.setTitle("周榜", forState: .Normal)
        btn1.setTitleColor(UIColor(hexString:"#666666" ), forState: .Normal)
        btn1.setTitleColor(UIColor(hexString:DEFALUT_RED as String ), forState: .Selected)
        btn1.titleLabel!.font = TL_FONT(13.0);
        view.addSubview(btn1)
        btn1.selected = true;
        
        
        //2.添加第二个按钮
        let btn2:UIButton = UIButton.init(frame: CGRectMake(WScreen * 0.5, 0, WScreen * 0.5, 40))
        btn2.setTitle("月榜", forState: .Normal)
        btn2.setTitleColor(UIColor(hexString:"#666666" ), forState: .Normal)
        btn2.setTitleColor(UIColor(hexString:DEFALUT_RED as String ), forState: .Selected)
        btn2.titleLabel!.font = TL_FONT(13.0);
        view.addSubview(btn2)
        
        
        
        //3.添加竖线
        
        let verLine:UIView = UIView.init(frame: CGRectMake(WScreen * 0.5 - 1, 0, 1, tl_h(view)))
        verLine.backgroundColor = UIColor(hexString: "#eeeeee")
        view.addSubview(verLine)
        
        
        TL_RAC_BUTTON(btn1) { _ in
        TL_NotificationCenter.postNotificationName("changeToDanGuan", object: nil)
            underLine1.frame = CGRectMake(0, tl_h(view) - 2, WScreen * 0.5, 1)
            underLine2.frame = CGRectMake(WScreen * 0.5, tl_h(view), WScreen * 0.5, 1)
            
            if (!btn1.selected){
                btn1.selected = true;
                if (btn2.selected) {
                    btn2.selected = false;
                }
            }
        }
        
        
        TL_RAC_BUTTON(btn2) { _ in
            TL_NotificationCenter.postNotificationName("changeToChuanGuan", object: nil)
            underLine1.frame = CGRectMake(WScreen * 0.5, tl_h(view) - 2, WScreen * 0.5, 1)
            underLine2.frame = CGRectMake(0, tl_h(view) - 2, WScreen * 0.5, 1)
            
            if (!btn2.selected){
                btn2.selected = true;
                
                if (btn1.selected) {
                    btn1.selected = false;
                }
        
            }
        }
        
        self.addSubview(view)
  
        
 }

    

}
