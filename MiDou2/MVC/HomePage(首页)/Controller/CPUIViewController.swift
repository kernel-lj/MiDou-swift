//
//  CPUIViewController.swift
//  MiDou2
//
//  Created by LTL on 16/4/27.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//

import UIKit
import ReactiveCocoa




class CPUIViewController: BaseController {
    
    var scrollView:UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        addScrollView()
        
        self.navigationItem.titleView = HomePageNavigationView.init(scrollview: scrollView)
        
        TL_RAC_BUTTON(leftBBI) { _ in  self.abc() }
        TL_RAC_BUTTON(rightBBI) { _ in self.cctv() }
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    func  abc () {
        print("点击了搜索按钮")
    }
    
    
    func  cctv  () {
        print("点击了发布方案")
    }
    
    func addScrollView() {
        scrollView = CPHomePageScrollView.init(vc: self)
    }



}
