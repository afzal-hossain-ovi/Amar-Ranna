//
//  FirstVC.swift
//  Amader Ranna
//
//  Created by Md AfzaL Hossain on 3/10/17.
//  Copyright © 2017 Md AfzaL Hossain. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(FirstVC.nextPage), userInfo: nil, repeats: false)
    }
    
    func nextPage() {
        performSegue(withIdentifier: "toMainVC", sender: nil)
    }
   

}
