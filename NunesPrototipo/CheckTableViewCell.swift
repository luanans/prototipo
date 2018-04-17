//
//  CheckTableViewCell.swift
//  NunesPrototipo
//
//  Created by Aluno on 16/04/18.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

class CheckTableViewCell: UITableViewCell {

    @IBOutlet weak var elemento2: UILabel!
    @IBOutlet weak var elementoCheckList: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
