//
//  ViewController.swift
//  SlideMenuBar
//
//  Created by admin on 8/9/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    func updateUI(text: String) {
//        <#code#>
//    }
//
//
    var isViewMove: Bool = false
    
    
    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var bunchView: UIView!
    
    
    @IBAction func animateButton(_ sender: UIBarButtonItem) {
        if !isViewMove {
            //tao chuyen dong
            isViewMove = true
            UIView.animate(withDuration: 1, animations: {
                self.leading.constant = self.bunchView.bounds.size.width * 2/3
                })
            }
        else {
            //tao chuyen dong
            isViewMove = false
            self.leading.constant = 0
            }
        UIView.animate(withDuration: 1, delay: 0.0, options: .curveEaseIn, animations: {self.view.layoutIfNeeded()})
    }
   
    @IBAction func button(_ sender: Any) {
        UIView.animate(withDuration: 1) {
            self.leading.constant = 0
        }
        UIView.commitAnimations()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    




}

