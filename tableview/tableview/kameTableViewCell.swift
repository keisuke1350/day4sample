//
//  kameTableViewCell.swift
//  tableview
//
//  Created by 葛西　佳祐 on 2020/06/06.
//  Copyright © 2020 葛西　佳祐. All rights reserved.
//

import UIKit

class kameTableViewCell: UITableViewCell {

    @IBOutlet weak var iconView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
