//
//  DevicesMacro.swift
//  DouNiu
//
//  Created by LTL on 15/12/8.
//  Copyright © 2015年 LTL. All rights reserved.
//

import Foundation
import UIKit


//3.5寸屏幕
let ThreePointFiveInch = (UIScreen.mainScreen().bounds.size.height == 480.0)
//4.0寸屏幕
let FourInch = (UIScreen.mainScreen().bounds.size.height == 568.0)
//4.7寸屏幕
let FourPointSevenInch = (UIScreen.mainScreen().bounds.size.height == 667.0)
//5.5寸屏幕
let FivePointFiveSevenInch = (UIScreen.mainScreen().bounds.size.height == 736.0)
//
//设备的宽高
let WScreen = UIScreen .mainScreen().bounds.size.width
let HScreen = UIScreen .mainScreen().bounds.size.height
//
//iOS7系统
let iOS7  = ((UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 7.0  && (UIDevice.currentDevice().systemVersion as NSString).doubleValue < 8.0)
//iOS8系统
let iOS8 = ((UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 8.0  && (UIDevice.currentDevice().systemVersion as NSString).doubleValue < 9.0)
//iOS9系统
let  iOS9  = ((UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 9.0)

public func isIPhone4() -> Bool {
    return UIScreen.mainScreen().currentMode?.size == CGSizeMake(640, 960)
}

public func isIPhone5() -> Bool {
    return UIScreen.mainScreen().currentMode?.size == CGSizeMake(640, 1136)
}

public func isIPhone6() -> Bool {
    return UIScreen.mainScreen().currentMode?.size == CGSizeMake(750, 1334)
}

public func isIPhone6Plus() -> Bool {
    return UIScreen.mainScreen().currentMode?.size == CGSizeMake(1242, 2208)
}

public func isIPhone6PlusBigMode() -> Bool {
    return UIScreen.mainScreen().currentMode?.size == CGSizeMake(1125, 2001)
}