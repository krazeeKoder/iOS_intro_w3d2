//
//  MyCustomTableViewCell.swift
//  Intro_to_iOS_W3D2
//
//  Created by Anthony Tulai on 2018-04-25.
//  Copyright © 2018 Anthony Tulai. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(withProfileImage image: UIImage, name: String, description: String) {
        self.profileImageView.image = image
        self.nameLabel.text = name
        self.descriptionLabel.text = description
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
