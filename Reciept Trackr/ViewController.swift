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
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "+", style: .Plain, target: self, action: #selector(handleLogout))
        view.backgroundColor = UIColor.whiteColor()
    }
    
    func handleLogout() {
        let addController = AddReceiptController()
        self.navigationController?.pushViewController(addController, animated: true)
    }
}

