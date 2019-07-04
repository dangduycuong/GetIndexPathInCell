//
//  CustomTableViewCell.swift
//  GetIndexPathInCell
//
//  Created by Cuong on 7/4/19.
//  Copyright © 2019 Cuong. All rights reserved.
//

import UIKit

protocol CustomTableViewCellDelegate: class {
    func buttonTapped()
}

class CustomTableViewCell: UITableViewCell {
    
    weak var delegate: CustomTableViewCellDelegate?

    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onButtonTapped(_ sender: UIButton) {
        delegate?.buttonTapped()
        //here we say that the responsible class for this action is the one that implements this delegate and we pass the custom cell to it.
    }

}
