//
//  CPMainTabbarController.swift
//  MiDou2
//
//  Created by LTL on 16/4/27.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//

import UIKit

class CPMainTabbarController: UITabBarController {
    
    var cpHomePageNav:UIViewController!
    var cpMarketNav:UIViewController!
    var cpScoreNav:UIViewController!
    var cpMyNav:UIViewController!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cpHomePageNav = TL_INSTANT_VC_WITH("CPHomePage", vcIdentifier: "CPHomePageNavController")
        cpMarketNav = TL_INSTANT_VC_WITH("CPMarket", vcIdentifier: "CPMarketNavController")
        cpScoreNav = TL_INSTANT_VC_WITH("CPScore", vcIdentifier: "CPScoreNavController")
        cpMyNav = TL_INSTANT_VC_WITH("CPMy", vcIdentifier: "CPMyNavController")
        
        self.viewControllers = [cpHomePageNav,cpMarketNav,cpScoreNav,cpMyNav]
        
        self.tabBar.tintColor = UIColor.redColor()
        self.tabBar.backgroundColor = UIColor.whiteColor()
        
        
//        let  cpHomePageNav = UIStoryboard.init(name: "CPHomePage", bundle: nil).instantiateViewControllerWithIdentifier("CPHomePageNavController")
//        
//        let  cpMarketNav = UIStoryboard.init(name: "CPMarket", bundle: nil).instantiateViewControllerWithIdentifier("CPMarketNavController")
//        
//        let  cpScoreNav = UIStoryboard.init(name: "CPScore", bundle: nil).instantiateViewControllerWithIdentifier("CPScoreNavController")
//        
//        let  cpMyNav = UIStoryboard.init(name: "CPMy", bundle: nil).instantiateViewControllerWithIdentifier("CPMyNavController")
        
       
        
    }
    
    
    override func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        if item.tag == 0 {
            print("000000")
        }else if item.tag == 1 {
            print("111111")
        }
        else if item.tag == 2 {
            print("222222")
        }
        else if item.tag == 3 {
            print("333333")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
