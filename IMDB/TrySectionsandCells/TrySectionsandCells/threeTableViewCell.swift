//
//  threeTableViewCell.swift
//  TrySectionsandCells
//
//  Created by Sayed Abdo on 7/9/18.
//  Copyright © 2018 JETS. All rights reserved.
//

import UIKit

class threeTableViewCell: UITableViewCell {

    @IBOutlet weak var text3: UITextView!
    @IBOutlet weak var lbl3: UIImageView!
    @IBOutlet weak var img3: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
