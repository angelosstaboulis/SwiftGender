//
//  GenderCell.swift
//  SwiftGender
//
//  Created by Angelos Staboulis on 26/3/22.
//

import UIKit

class GenderCell: UITableViewCell {

    @IBOutlet var btnGuesGender: UIButton!
    @IBOutlet var txtCount: UITextField!
    @IBOutlet var txtProbability: UITextField!
    @IBOutlet var txtGender: UITextField!
    @IBOutlet var txtName: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
