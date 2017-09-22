//
//  ViewController.swift
//  Amader Ranna
//
//  Created by Md AfzaL Hossain on 3/10/17.
//  Copyright © 2017 Md AfzaL Hossain. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var tagNumber = 0
    var isShowMenu = true
    var menuVC: SlideMenuVC!
    @IBOutlet weak var slideBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuVC = self.storyboard?.instantiateViewController(withIdentifier: "SlideMenuVC") as? SlideMenuVC
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(MainVC.respondsToSwipe))
        swipeRight.direction = .right
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(MainVC.respondsToSwipe))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeRight)
        self.view.addGestureRecognizer(swipeLeft)
       
    }
    
    
    func respondsToSwipe(gesture: UISwipeGestureRecognizer) {
        switch gesture.direction {
        case UISwipeGestureRecognizerDirection.right:
            showSlideMenu()
        case UISwipeGestureRecognizerDirection.left:
            closeMenu()
        default:
            break
        }
    }
    
    @IBAction func showMenu() {
        if isShowMenu {
            showSlideMenu()
    
        }else {
            closeMenu()
        }
        isShowMenu = !isShowMenu
    }
    
    func showSlideMenu() {
        UIView.animate(withDuration: 0.4, animations: {
            self.menuVC.view.frame = CGRect(x: 0, y: 60, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            self.menuVC.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
            self.addChildViewController(self.menuVC)
            self.view.addSubview(self.menuVC.view)
        })
    }
    
    func closeMenu() {
        UIView.animate(withDuration: 0.4, animations: {
            self.menuVC.view.frame = CGRect(x: -UIScreen.main.bounds.size.width, y: 60, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        }, completion: { (finished) in
            self.menuVC.view.removeFromSuperview()
        })
    }
    
    @IBAction func btnPressed(btn: UIButton) {
        tagNumber = btn.tag
        performSegue(withIdentifier: "toListVC", sender: btn)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toListVC" {
            let navBar = segue.destination as? UINavigationController
            let listVC = navBar?.topViewController as! ListVC
            listVC.tagNumber = tagNumber
        }
        
    }

}

