//
//  CustomTableViewCell.swift
//  FRHyperLabel-Tableview
//
//  Created by Daniel Mathews on 2017-02-01.
//  Copyright © 2017 Daniel Mathews. All rights reserved.
//

import UIKit
import FRHyperLabel

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var label: FRHyperLabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        label.clearActionDictionary()
    }

}
