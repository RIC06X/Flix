//
//  MoviewTableViewCell.swift
//  Flix Part 1
//
//  Created by Yanjie Xu on 2020/4/15.
//  Copyright © 2020 Yanjie Xu. All rights reserved.
//

import UIKit

class MoviewTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var synopsisLable: UILabel!
    
    @IBOutlet weak var posterView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
