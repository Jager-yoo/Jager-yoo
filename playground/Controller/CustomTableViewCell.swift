//
//  CustomTableViewCell.swift
//  playground
//
//  Created by 유재호 on 2021/12/12.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var circleImage: UIImageView!
    @IBOutlet weak var menuLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
