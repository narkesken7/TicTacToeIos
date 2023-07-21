//
//  ratingCell.swift
//  JannurApp
//
//  Created by user on 13.07.2023.
//

import UIKit

class ratingCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var scoreCell: UILabel!
    
    @IBOutlet weak var labelCell: UILabel!
    
    @IBOutlet weak var imageCell: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
