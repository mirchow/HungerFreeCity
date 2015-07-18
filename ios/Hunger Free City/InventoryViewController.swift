//
//  SecondViewController.swift
//  HungerFreeCity
//
//  Created by Mirek Chowaniok on 6/6/15.
//  Copyright (c) 2015 Jacksonville Community. All rights reserved.
//

import UIKit

class InventoryViewController: UIViewController {

    override func awakeFromNib() {
        self.navigationController?.navigationBar.titleTextAttributes = Constants.Color.TitleDict
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

