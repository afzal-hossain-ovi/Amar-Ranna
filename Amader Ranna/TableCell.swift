//
//  TableCell.swift
//  Amader Ranna
//
//  Created by Md AfzaL Hossain on 3/10/17.
//  Copyright © 2017 Md AfzaL Hossain. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    @IBOutlet weak var itemImg: UIImageView!
    @IBOutlet weak var itemNameLbl: UILabel!
    
   
    func configureCell(model: DataModel) {
        itemNameLbl.text = model.title
    }
}
