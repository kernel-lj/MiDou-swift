//
//  RecommendView.swift
//  MiDou2
//
//  Created by LTL on 16/5/4.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//

import UIKit

class RecommendView: UIView,UITableViewDelegate,UITableViewDataSource {

    
    var tableView:UITableView!
    
    init(scrollView:UIScrollView){
         super.init(frame: CGRectMake(0, 0, WScreen,  HScreen - 64))
        
        scrollView.addSubview(self)
        
            //添加tableView
            self.addTableView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func addTableView(){
        tableView = UITableView.init()
        tableView.frame = self.bounds
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .None
        
        self.addSubview(tableView)
    }
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (section == 0) {
            return 1;
        }else if (section == 1){
            return 10;
        }
        
        return 1;

    }


    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if (indexPath.section == 0) {
            let cell = CPAnalystCell .cellWithTableView(tableView)
            return cell
            
        }
        
        else if (indexPath.section == 1) {
            
            
            let  cell = CPMarketCell.creatTableViewCell(tableView)
            return cell
        }
        
        let ID:NSString = "ddd"
        
        var cell = tableView.dequeueReusableCellWithIdentifier(ID as String)
        if ((cell == nil)) {
            cell = UITableViewCell.init(style: .Default, reuseIdentifier: ID as String)
        }
        cell!.textLabel!.text = "00000000";
        
        return cell!;

    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if (indexPath.section == 0) {
            return 183;
        }else if (indexPath.section == 1){
            return 157;
        }else {
            return 0;
        }

    }
    
    
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if (section == 0){
            return self.sectionHeaderView("大咖分析师")
        }else  if (section == 1){
            return self.sectionHeaderView("热门推荐")
        }
        else {
            return  nil
        }
    }
    

    
   
    func sectionHeaderView(title:NSString) -> UIView {
        
        let view = UIView.init(frame: Rect(0, y: 0, width: WScreen, height: 34))
        let label = UILabel.init(frame: CGRectMake(10, 0, WScreen - 10, 34))
        label.text = title as String;
        label.font = TL_FONT(15.0);
        label.textColor = UIColor.init(hexString: DEFALUT_BLACK as String)
        view.addSubview(label)
        view.backgroundColor = UIColor.init(hexString: "#f3f3f3")
        return view;

    }
    

    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 34
    }    

}
