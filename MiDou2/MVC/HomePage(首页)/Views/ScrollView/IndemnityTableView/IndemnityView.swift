//
//  IndemnityView.swift
//  MiDou2
//
//  Created by LTL on 16/5/4.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//

import UIKit

class IndemnityView: UIView,UITableViewDataSource,UITableViewDelegate {

    var tableView:UITableView!

    init(scrollView:UIScrollView){
        super.init(frame: CGRectMake(WScreen, 0, WScreen,  HScreen - 64))
        
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
    
   
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
         return 10;
        
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 157
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let  cell = CPMarketCell.creatTableViewCell(tableView)
        return cell
    
    }


}
