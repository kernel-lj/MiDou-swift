//
//  CPMarketCell.swift
//  MiDou2
//
//  Created by LTL on 16/5/4.
//  Copyright © 2016年 com.midou.enpr. All rights reserved.
//

import UIKit

class CPMarketCell: UITableViewCell {

    @IBOutlet weak var headPortaitImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        headPortaitImageView.radiusWith(20, backgroundImage: UIImage.init(named: "myDog.jpeg"))

        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    class func creatTableViewCell(tableView:UITableView) -> UITableViewCell! {
        
        let ID:NSString = "CPMarketCell"
        var cell = tableView.dequeueReusableCellWithIdentifier(ID as String)
        
        if (cell == nil) {
        cell = NSBundle.mainBundle().loadNibNamed("CPMarketCell", owner: nil, options: nil)[0] as? UITableViewCell
        }
        cell!.selectionStyle = .None
        
        
        return cell!
    }


}
