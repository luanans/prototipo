//
//  TVCCellTableViewCell.swift
//  NunesPrototipo
//
//  Created by Aluno on 4/12/18.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

class TVCCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var droga: UILabel!
    
    @IBOutlet weak var instrucoes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
