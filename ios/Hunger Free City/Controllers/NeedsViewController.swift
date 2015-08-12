//
//  SecondViewController.swift
//  HungerFreeCity
//
//  Created by Mirek Chowaniok on 6/6/15.
//  Copyright (c) 2015 Jacksonville Community. All rights reserved.
//

import UIKit

class NeedsViewController: UIViewController {

    override func awakeFromNib() {
        self.navigationController?.navigationBar.titleTextAttributes = Constants.Color.TitleDict
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        var tracker = GAI.sharedInstance().defaultTracker
        tracker.set(kGAIScreenName, value: "NeedsView")
        var builder = GAIDictionaryBuilder.createScreenView()
        tracker.send(builder.build() as [NSObject : AnyObject])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

