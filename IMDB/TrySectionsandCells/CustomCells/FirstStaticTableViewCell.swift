//
//  FirstStaticTableViewCell.swift
//  TrySectionsandCells
//
//  Created by Sayed Abdo on 7/10/18.
//  Copyright © 2018 JETS. All rights reserved.
//

import UIKit

class FirstStaticTableViewCell: UITableViewCell {

    @IBOutlet weak var labelTxt: UILabel!
    @IBOutlet weak var rightImage: UIImageView!
    @IBOutlet weak var leftImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
