//
//  BaseController.swift
//  MiDou2
//
//  Created by LTL on 16/4/27.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//


//#define RECOMMEND_SEARCH  @"搜索"
//#define RECOMMEND_PUBLISH @"发布"

let  RECOMMEND_SEARCH =  "搜索"
let  RECOMMEND_PUBLISH = "发布"

import UIKit


var leftBBI:UIButton!
var rightBBI:UIButton!


class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.addBBI(RECOMMEND_SEARCH)
        self.addBBI(RECOMMEND_PUBLISH)

    }
    
    
    func addBBI(name:NSString) {
        let  btn = UIButton.init(type: .Custom)
        btn.frame = CGRectMake(0, 0, 22, 22)
        btn .setBackgroundImage(TL_IMAGE(name), forState: .Normal)
        let item = UIBarButtonItem.init(customView: btn)
        
        let leftNegativeSpacer = UIBarButtonItem.init(barButtonSystemItem:.FixedSpace, target: nil, action: nil)
        
        leftNegativeSpacer.width = -6;
        
        let rightNegativeSpacer = UIBarButtonItem.init(barButtonSystemItem:.FixedSpace, target: nil, action: nil)
        
        rightNegativeSpacer.width = -8;

        if name == RECOMMEND_SEARCH {
            self.navigationItem.leftBarButtonItems = [leftNegativeSpacer,item]
            leftBBI = btn

        }else if name ==  RECOMMEND_PUBLISH {
            self.navigationItem.rightBarButtonItems = [rightNegativeSpacer,item]
            rightBBI = btn
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
