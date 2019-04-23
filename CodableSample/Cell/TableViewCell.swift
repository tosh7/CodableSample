//
//  TableViewCell.swift
//  CodableSample
//
//  Created by Satoshi Komatsu on 2019/04/22.
//  Copyright © 2019 Satoshi Komatsu. All rights reserved.
//

import UIKit

final class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
