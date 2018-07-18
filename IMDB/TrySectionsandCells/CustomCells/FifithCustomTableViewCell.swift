//
//  FifithCustomTableViewCell.swift
//  TrySectionsandCells
//
//  Created by Sayed Abdo on 7/9/18.
//  Copyright © 2018 JETS. All rights reserved.
//

import UIKit

class FifithCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var TextOfcomment: UITextView!

    @IBOutlet weak var userNameofComment: UILabel!
    @IBOutlet weak var imgComment: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
