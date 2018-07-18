//
//  SecondCustomCell.swift
//  SecondView
//
//  Created by Sayed Abdo on 7/9/18.
//  Copyright © 2018 ITI. All rights reserved.
//

import UIKit

class SecondCustomCell : UITableViewCell {

    @IBOutlet weak var overviewOutlet: UIButton!
    
    @IBOutlet weak var discussionOutlet: UIButton!
    @IBAction func overviewBtn(_ sender: UIButton) {
        
        self.overviewOutlet.layer.backgroundColor = discussionOutlet.layer.backgroundColor;
    self.overviewOutlet.setTitleColor(discussionOutlet.titleColor(for: .normal), for: .normal);
        
        self.discussionOutlet.layer.backgroundColor = UIColor.white.cgColor
    
        self.discussionOutlet.setTitleColor(UIColor.lightGray, for: .normal)
        self.overviewOutlet.isEnabled = false;
        self.discussionOutlet.isEnabled = true;
    }
    
    @IBAction func discussionBtn(_ sender: UIButton) {
        self.discussionOutlet.layer.backgroundColor = overviewOutlet.layer.backgroundColor;
    self.discussionOutlet.setTitleColor(overviewOutlet.titleColor(for: .normal), for: .normal)
        
        self.overviewOutlet.setTitleColor(UIColor.lightGray, for: .normal)
        self.overviewOutlet.layer.backgroundColor = UIColor.white.cgColor
        self.overviewOutlet.isEnabled = true;
        self.discussionOutlet.isEnabled = false;
    }
    
}
