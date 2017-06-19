//
//  ListVC.swift
//  Amader Ranna
//
//  Created by Md AfzaL Hossain on 3/10/17.
//  Copyright © 2017 Md AfzaL Hossain. All rights reserved.
//

import UIKit

class ListVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var ds: DataService! = DataService.instance
    @IBOutlet weak var tableView: UITableView!
    var tagNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ds.doneAllData()
        tableView.reloadData()
        
    }
    

    

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tagNumber == 1 {
            return ds.mashModel.count
        }else if tagNumber == 2 {
            return ds.mangsoModel.count
        }else if tagNumber == 3 {
            return ds.chalModel.count
        }else if tagNumber == 4 {
            return ds.kababModel.count
        }else if tagNumber == 5 {
            return ds.shakShobjiModel.count
        }else if tagNumber == 6 {
            return ds.panioModel.count
        }else if tagNumber == 7 {
            return ds.vortaVaziModel.count
        }else if tagNumber == 8 {
            return ds.bekingModel.count
        }else if tagNumber == 9 {
            return ds.dimModel.count
        }else if tagNumber == 10 {
            return ds.shopModel.count
        }else if tagNumber == 11 {
            return ds.tokJalMistiModel.count
        }else if tagNumber == 12 {
            return ds.bideshiModel.count
        }else {
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableCell
        if tagNumber == 1 {
            cell?.configureCell(model: ds.mashModel[indexPath.row])
            return cell!
        }else if tagNumber == 2 {
            cell?.configureCell(model: ds.mangsoModel[indexPath.row])
            return cell!
        }else if tagNumber == 3 {
            cell?.configureCell(model: ds.chalModel[indexPath.row])
            return cell!
        }else if tagNumber == 4 {
            cell?.configureCell(model: ds.kababModel[indexPath.row])
            return cell!
        }else if tagNumber == 5 {
            cell?.configureCell(model: ds.shakShobjiModel[indexPath.row])
            return cell!
        }else if tagNumber == 6 {
            cell?.configureCell(model: ds.panioModel[indexPath.row])
            return cell!
        }else if tagNumber == 7 {
            cell?.configureCell(model: ds.vortaVaziModel[indexPath.row])
            return cell!
        }else if tagNumber == 8 {
            cell?.configureCell(model: ds.bekingModel[indexPath.row])
            return cell!
        }else if tagNumber == 9 {
            cell?.configureCell(model: ds.dimModel[indexPath.row])
            return cell!
        }else if tagNumber == 10 {
            cell?.configureCell(model: ds.shopModel[indexPath.row])
            return cell!
        }else if tagNumber == 11 {
            cell?.configureCell(model: ds.tokJalMistiModel[indexPath.row])
            return cell!
        }else if tagNumber == 12 {
            cell?.configureCell(model: ds.bideshiModel[indexPath.row])
            return cell!
        }else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tagNumber == 1 {
            performSegue(withIdentifier: "toDetailsVC", sender: ds.mashModel[indexPath.row])
        }else if tagNumber == 2 {
            performSegue(withIdentifier: "toDetailsVC", sender: ds.mangsoModel[indexPath.row])
        }else if tagNumber == 3 {
            performSegue(withIdentifier: "toDetailsVC", sender: ds.chalModel[indexPath.row])
        }else if tagNumber == 4 {
            performSegue(withIdentifier: "toDetailsVC", sender: ds.kababModel[indexPath.row])
        }else if tagNumber == 5 {
            performSegue(withIdentifier: "toDetailsVC", sender: ds.shakShobjiModel[indexPath.row])
        }else if tagNumber == 6 {
            performSegue(withIdentifier: "toDetailsVC", sender: ds.panioModel[indexPath.row])
        }else if tagNumber == 7 {
            performSegue(withIdentifier: "toDetailsVC", sender: ds.vortaVaziModel[indexPath.row])
        }else if tagNumber == 8 {
            performSegue(withIdentifier: "toDetailsVC", sender: ds.bekingModel[indexPath.row])
        }else if tagNumber == 9 {
            performSegue(withIdentifier: "toDetailsVC", sender: ds.dimModel[indexPath.row])
        }else if tagNumber == 10 {
            performSegue(withIdentifier: "toDetailsVC", sender: ds.shopModel[indexPath.row])
        }else if tagNumber == 11 {
            performSegue(withIdentifier: "toDetailsVC", sender: ds.tokJalMistiModel[indexPath.row])
        }else if tagNumber == 12 {
            performSegue(withIdentifier: "toDetailsVC", sender: ds.bideshiModel[indexPath.row])
        }else {
            performSegue(withIdentifier: "toDetailsVC", sender: nil)
        }
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsVC = segue.destination as? DetailsVC {
            if let  model = sender as? DataModel {
                detailsVC.dataModel = model
            }
        }
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
   

}
