//
//  DetailsVC.swift
//  Amader Ranna
//
//  Created by Md AfzaL Hossain on 3/10/17.
//  Copyright © 2017 Md AfzaL Hossain. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var upadanDetailsLbl: UILabel!
    @IBOutlet weak var karjoDetailsLbl: UILabel!
    
    var dataModel: DataModel!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.isEditable = false
        titleLbl.text = dataModel.title
        textView.text = dataModel.upadanDetails + "\n\n\nপ্রণালীঃ\n\n" + dataModel.kajoDetails
        
    }

}
