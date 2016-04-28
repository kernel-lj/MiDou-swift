//
//  HomePageNavigationView.swift
//  MiDou2
//
//  Created by LTL on 16/4/28.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//

let  REDTRIANGLE =  "redTriangle"


import UIKit

class HomePageNavigationView: UIView {
    
    var aScrollView:UIScrollView!
    var recommendBtn:UIButton!
    var indemnityBtn:UIButton!
    var siteBtn:UIButton!
    var rankBtn:UIButton!
    var concernBtn:UIButton!
    var selectedBtn:UIButton!
    var triangleView:UIImageView!
    
    
    init(scrollview:UIScrollView){
        super.init(frame: CGRectMake(0, 0, WScreen - 32 * 2, 44))
        
         aScrollView = scrollview
        
        //1.添加按钮和红色三角
         self.setViews()
        
        //2.按钮的点击事件
        TL_RAC_BUTTON(recommendBtn) { _ in self.clickBtn(self.recommendBtn)}
        TL_RAC_BUTTON(indemnityBtn) { _ in self.clickBtn(self.indemnityBtn)}
        TL_RAC_BUTTON(siteBtn) { _ in self.clickBtn(self.siteBtn)}
        TL_RAC_BUTTON(rankBtn) { _ in self.clickBtn(self.rankBtn)}
        TL_RAC_BUTTON(concernBtn) { _ in self.clickBtn(self.concernBtn)}
        

        //3.scrollView滚动的时候改变红色按钮改变位置
        TL_RecevieNotification(ScrollToFirstSrceen) { _ in self.clickBtn(self.recommendBtn)}
        TL_RecevieNotification(ScrollToSecondSrceen) { _ in self.clickBtn(self.indemnityBtn)}
        TL_RecevieNotification(ScrollToThirdSrceen) { _ in self.clickBtn(self.siteBtn)}
        TL_RecevieNotification(ScrollToFourthSrceen) { _ in self.clickBtn(self.rankBtn)}
        TL_RecevieNotification(ScrollToFifthSrceen) { _ in self.clickBtn(self.concernBtn)}

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    
    
    func clickBtn(button:UIButton) {
        
        if (!button.selected) {
        //1.切换选中按钮
        button.selected = true;
        selectedBtn.selected = false;
        selectedBtn = button;
        button.titleLabel!.font = UIFont.boldSystemFontOfSize(15)
        
        //2.切换红色三角视图位置
         triangleView.frame = Rect(tl_x(button) + tl_w(button) * 0.5 - 4, y: tl_y(button) + tl_h(button) + 2, width: 7, height: 4)
            
            if (button .isEqual(recommendBtn)) {
                
                indemnityBtn.titleLabel!.font = TL_FONT(15.0);
                siteBtn.titleLabel!.font = TL_FONT(15.0);
                rankBtn.titleLabel!.font = TL_FONT(15.0);
                concernBtn.titleLabel!.font = TL_FONT(15.0);
                
//                [_scrollView scrollRectToVisible:CGRectMake(0,0,WScreen,64) animated:NO];
//                [_scrollView setContentOffset:CGPointMake(0,0)];
                    aScrollView.scrollRectToVisible(CGRectMake(0,0,WScreen,64), animated: true)
                    aScrollView.setContentOffset(CGPointMake(0,0), animated: true)
                
            }else if (button.isEqual(indemnityBtn)){
                recommendBtn.titleLabel!.font = TL_FONT(15.0);
                siteBtn.titleLabel!.font = TL_FONT(15.0);
                rankBtn.titleLabel!.font = TL_FONT(15.0);
                concernBtn.titleLabel!.font = TL_FONT(15.0);
                
//                [_scrollView scrollRectToVisible:CGRectMake(WScreen * 1,0,WScreen,64) animated:NO];
//                [_scrollView setContentOffset:CGPointMake(WScreen * 1,0)];
                aScrollView.scrollRectToVisible(CGRectMake(WScreen * 1,0,WScreen,64), animated: true)
                aScrollView.setContentOffset(CGPointMake(WScreen * 1,0), animated: true)
                
            }else if (button.isEqual(siteBtn)){
                indemnityBtn.titleLabel!.font = TL_FONT(15.0);
                recommendBtn.titleLabel!.font = TL_FONT(15.0);
                rankBtn.titleLabel!.font = TL_FONT(15.0);
                concernBtn.titleLabel!.font = TL_FONT(15.0);
                
//                [_scrollView scrollRectToVisible:CGRectMake(WScreen * 2,0,WScreen,64) animated:NO];
//                [_scrollView setContentOffset:CGPointMake(WScreen * 2,0)];
                
                aScrollView.scrollRectToVisible(CGRectMake(WScreen * 2,0,WScreen,64), animated: true)
                aScrollView.setContentOffset(CGPointMake(WScreen * 2,0), animated: true)
                
            }else if (button.isEqual(rankBtn)){
                indemnityBtn.titleLabel!.font = TL_FONT(15.0);
                siteBtn.titleLabel!.font = TL_FONT(15.0);
                recommendBtn.titleLabel!.font = TL_FONT(15.0);
                concernBtn.titleLabel!.font = TL_FONT(15.0);
                
//                [_scrollView scrollRectToVisible:CGRectMake(WScreen * 3,0,WScreen,64) animated:NO];
//                [_scrollView setContentOffset:CGPointMake(WScreen * 3,0)];
                aScrollView.scrollRectToVisible(CGRectMake(WScreen * 3,0,WScreen,64), animated: true)
                aScrollView.setContentOffset(CGPointMake(WScreen * 3,0), animated: true)
                
            }else if (button.isEqual(concernBtn)){
                indemnityBtn.titleLabel!.font = TL_FONT(15.0);
                siteBtn.titleLabel!.font = TL_FONT(15.0);
                rankBtn.titleLabel!.font = TL_FONT(15.0);
                recommendBtn.titleLabel!.font = TL_FONT(15.0);
                
//                [_scrollView scrollRectToVisible:CGRectMake(WScreen * 4,0,WScreen,64) animated:NO];
//                [_scrollView setContentOffset:CGPointMake(WScreen * 4,0)];
                aScrollView.scrollRectToVisible(CGRectMake(WScreen * 4,0,WScreen,64), animated: true)
                aScrollView.setContentOffset(CGPointMake(WScreen * 4,0), animated: true)
                
            }

            
        }

        
    }
    
    
    
    
    func setViews() {
        
    addButtons()
    addTriangleView()
        
    }
    
    
    
    func addButtons() {
        recommendBtn = UIButton.init()
        indemnityBtn = UIButton.init()
        siteBtn      = UIButton.init()
        rankBtn      = UIButton.init()
        concernBtn   = UIButton.init()
        
        self.confBtn(recommendBtn, title: "推荐")
        self.confBtn(indemnityBtn, title: "黑单必赔")
        self.confBtn(siteBtn, title: "站点")
        self.confBtn(rankBtn, title: "排行")
        self.confBtn(concernBtn, title: "关注")
        
    }
    
    func confBtn(btn:UIButton,title:NSString) {
        
        btn.setTitle(title as String, forState: .Normal)
        btn.setTitleColor(UIColor(hexString: DEFALUT_BLACK as String), forState: .Normal)
        btn.setTitleColor(UIColor(hexString: DEFALUT_RED as String), forState: .Selected)
        btn.titleLabel?.font = TL_FONT(15)
        
        recommendBtn.selected = true
        selectedBtn = recommendBtn
        if recommendBtn.selected {
            recommendBtn.titleLabel?.font = UIFont.boldSystemFontOfSize(15)
        }
        
        self.addSubview(btn)
        
    }
    
    
    func  addTriangleView() {
        
        triangleView = UIImageView.init(image: UIImage.init(named: REDTRIANGLE))
        self.addSubview(triangleView)
        
    }
    
    override func layoutSubviews() {
        
        let btnWidth:CGFloat = 30
        let space = (WScreen - 32 * 2 - 4 * btnWidth - 76) / 6;
        let btnHeight:CGFloat = btnWidth
        let btnY:CGFloat = 8;
        
        
        recommendBtn.frame = Rect(space, y: btnY, width: btnWidth, height: btnHeight)
        indemnityBtn.frame = Rect(tl_x(recommendBtn) + tl_w(recommendBtn) + space, y:btnY , width: 60, height: btnHeight)
        siteBtn.frame = Rect(tl_x(indemnityBtn) + tl_w(indemnityBtn) + space, y: btnY, width: btnWidth, height: btnHeight)
        rankBtn.frame = Rect(tl_x(siteBtn) + tl_w(siteBtn) + space, y: btnY, width: btnWidth, height: btnHeight)
        concernBtn.frame = Rect(tl_x(rankBtn) + tl_w(rankBtn) + space, y: btnY, width: btnWidth, height: btnHeight)
        
        triangleView.frame = Rect(tl_x(recommendBtn) + tl_w(recommendBtn) * 0.5 - 4, y: tl_y(recommendBtn) + tl_h(recommendBtn) + 2, width: 7, height: 4)
    }
    

}
