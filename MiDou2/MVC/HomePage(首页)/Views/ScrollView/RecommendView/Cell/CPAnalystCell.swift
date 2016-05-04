//
//  CPAnalystCell.swift
//  MiDou2
//
//  Created by LTL on 16/5/4.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//

import UIKit

class CPAnalystCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    
    class func cellWithTableView(tableView:UITableView) -> UITableViewCell! {
        
        let ID:NSString = "CPAnalystCell"
        var cell = tableView.dequeueReusableCellWithIdentifier(ID as String)
        if ((cell == nil)) {
            cell = UITableViewCell.init(style: .Default, reuseIdentifier: ID as String)
        }
        
        print("1111 == \(cell)")

        let analystContentView:CPAnalystContentView = CPAnalystContentView.init(frame:  CGRectMake(0, 0, WScreen, 92))
        cell!.contentView.addSubview(analystContentView)

        
        return cell!
    }

}
