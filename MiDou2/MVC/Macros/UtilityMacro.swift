//
//  UtilityMacro.swift
//  DouNiu
//
//  Created by LTL on 15/12/8.
//  Copyright © 2015年 LTL. All rights reserved.
//

import Foundation
import UIKit



//通知中心
let TL_NotificationCenter = NSNotificationCenter.defaultCenter()

// TL_UserDefaults
let TL_UserDefaults = NSUserDefaults.standardUserDefaults()

//按钮正常状态
let btnNormalState = UIControlState.Normal
let btnTouchUpInside = UIControlEvents.TouchUpInside

let TL_Application = UIApplication.sharedApplication()

let TL_KEYWINDOW = UIApplication.sharedApplication().keyWindow!


//根据xib名字获取一个视图
public func TL_BundleToObj(nibName:String)  -> UIView {
       return NSBundle.mainBundle().loadNibNamed(nibName, owner: nil, options: nil)[0] as! UIView
}


//控制器添加一个视图
public func TL_ADDVIEW(view:UIView, vc:UIViewController) {
    vc.view .addSubview(view)
}


//传入一个图片的名字
public func TL_IMAGE(name:NSString) -> UIImage{
   return UIImage(named: name as String)!
}

//颜色
public func TL_COLOR(color:String) -> UIColor {    
    if color == "white" {
        return UIColor.whiteColor()
    }else if color == "darkGray" {
        return UIColor.darkGrayColor()
    }else if color == "lightGray" {
        return UIColor.lightGrayColor()
    }else if color == "gray" {
        return UIColor.grayColor()
    }else if color == "red" {
        return UIColor.redColor()
    }else if color == "green" {
        return UIColor.greenColor()
    }else if color == "green" {
        return UIColor.greenColor()
    }else if color == "cyan" {
        return UIColor.cyanColor()
    }else if color == "yellow" {
        return UIColor.yellowColor()
    }else if color == "magenta" {
        return UIColor.magentaColor()
    }else if color == "orange" {
        return UIColor.orangeColor()
    }else if color == "purple" {
        return UIColor.purpleColor()
    }else if color == "brown" {
        return UIColor.brownColor()
    }else {
        return UIColor.clearColor()
    }
}


//字体大小
public func TL_FONT(fontSize:CGFloat) -> UIFont {
    return UIFont.systemFontOfSize(fontSize)
}


//从指定的storyboard中初始化一个控制器
public func TL_INSTANT_VC_WITH(storyboardName:String,vcIdentifier:String) -> UIViewController {
    return UIStoryboard.init(name: storyboardName, bundle: nil).instantiateViewControllerWithIdentifier(vcIdentifier)
}

//从Main-storyboard中初始化一个控制器
public func TL_INSTANT_VC_WITH_MIAN(vcIdentifier:String) -> UIViewController {
    return UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(vcIdentifier)
}



// 创建rect
public func Rect(x:CGFloat,y:CGFloat,width:CGFloat,height:CGFloat) -> CGRect{
    return CGRectMake(x, y, width,height)
}

public func tl_x(object:UIView) -> CGFloat {
    return object.frame.origin.x
}

public func tl_y(object:UIView) -> CGFloat {
    return object.frame.origin.y
}

public func tl_w(object:UIView) -> CGFloat {
    return object.frame.size.width
}

public func tl_h(object:UIView) -> CGFloat {
    return object.frame.size.height
}

public func TL_RAC_BUTTON(btn:UIButton, nextBlock:((AnyObject!) -> Void) ) {
    
    btn.rac_signalForControlEvents(btnTouchUpInside).subscribeNext(nextBlock)    
}

public func TL_RecevieNotification(name:NSString,nextBlock:((AnyObject!) -> Void)) {
    TL_NotificationCenter.rac_addObserverForName(name as String, object: nil).subscribeNext(nextBlock)
    
//    TL_NotificationCenter.rac_addObserverForName(ScrollToFifthSrceen, object: nil) .subscribeNext { test in
//        self.clickBtn(self.concernBtn)
//    }
}


