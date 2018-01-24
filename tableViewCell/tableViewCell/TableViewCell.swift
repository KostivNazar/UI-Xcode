//
//  TableViewCell.swift
//  tableViewCell
//
//  Created by Mac on 10.10.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var model : Model?
    
    
    @IBOutlet weak var imageModel: UIImageView!
    
    
    @IBOutlet weak var label: UILabel!
    
    func initCell(model: Model) {
        self.model = model
        imageModel.image = model.image
        label.text = model.name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
