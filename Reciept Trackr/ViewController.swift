//
//  ViewController.swift
//  Reciept Trackr
//
//  Created by Viraj Shah on 7/13/16.
//  Copyright © 2016 Vetek Systems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.compose, target: self, action: #selector(handleLogout))
        navigationItem.rightBarButtonItem = button
        view.backgroundColor = UIColor.white
    }
    
    func handleLogout() {
        let addController = AddReceiptController()
        self.navigationController?.pushViewController(addController, animated: true)
    }
}

