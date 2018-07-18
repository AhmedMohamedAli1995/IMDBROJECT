//
//  FourthCustomTableViewCell.swift
//  TrySectionsandCells
//
//  Created by Sayed Abdo on 7/9/18.
//  Copyright © 2018 JETS. All rights reserved.
//

import UIKit

class FourthCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var countLike: UILabel!
    
    @IBAction func likeAction(_ sender: Any) {
    }
    
    @IBOutlet weak var commentCount: UILabel!
    @IBAction func commentAction(_ sender: Any) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
