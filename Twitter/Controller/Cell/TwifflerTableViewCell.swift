//
//  TwifflerTableViewCell.swift
//  Twitter
//
//  Created by Shoaib Huq on 3/11/22.
//  Copyright © 2022 Dan. All rights reserved.
//

import UIKit
import AlamofireImage

class TwifflerTableViewCell: UITableViewCell {

    @IBOutlet weak var userProfileImage: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var tweetContent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        userName.sizeToFit()
        tweetContent.sizeToFit()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
