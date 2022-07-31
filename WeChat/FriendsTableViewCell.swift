//
//  FriendsTableViewCell.swift
//  WeChat
//
//  Created by Ajin on 30/07/22.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profPic: UIImageView!
    @IBOutlet weak var person: UILabel!
    @IBOutlet weak var msg: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profPic.makeRounded()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension UIImageView {
    
    func makeRounded() {
        
        layer.borderWidth = 1
        layer.masksToBounds = false
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = self.frame.height / 2
        clipsToBounds = true
    }
}
