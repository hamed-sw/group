//
//  GallaryTableViewCell.swift
//  group
//
//  Created by Hamed Amiry on 24.11.2021.
//

import UIKit

class GallaryTableViewCell: UITableViewCell {

    @IBOutlet weak var gImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
