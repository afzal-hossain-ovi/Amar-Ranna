//
//  MenuVC.swift
//  Amader Ranna
//
//  Created by Md AfzaL Hossain on 6/13/17.
//  Copyright © 2017 Md AfzaL Hossain. All rights reserved.
//

import UIKit

class SlideMenuVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let menuItem = ["ফেসবুকে আমরা","অন্যান্য অ্যাপ","আমাদের সম্পর্কে","শেয়ার করুন"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell") as? MenuTableCell {
            cell.menuItemLbl.text = menuItem[indexPath.row]
            return cell
        }else {
            return UITableViewCell()
        }
    }


}
