//
//  FirstCustomTableViewCell.swift
//  TrySectionsandCells
//
//  Created by Sayed Abdo on 7/9/18.
//  Copyright © 2018 JETS. All rights reserved.
//

import UIKit

class FirstCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var ago: UILabel!
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var userImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
