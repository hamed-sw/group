//
//  GroupTableViewCell.swift
//  group
//
//  Created by Hamed Amiry on 24.11.2021.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var thelabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
