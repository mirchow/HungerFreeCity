//
//  FirstViewController.swift
//  HungerFreeCity
//
//  Created by Mirek Chowaniok on 6/6/15.
//  Copyright (c) 2015 Jacksonville Community. All rights reserved.
//

import UIKit


class DistCentersViewController: UIViewController {
//    class CitiesViewController: UITableViewController, CLLocationManagerDelegate, UITableViewDataSource, UITableViewDelegate, UIAlertViewDelegate {


    @IBOutlet weak var mapContainerView: UIView!
    @IBOutlet weak var listContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("entered DistCentersViewController")
        
 //       HFCDataProvider provider = HFCDataProvider()
    
//        let tracker = GAI.sharedInstance().defaultTracker
//        tracker.set(kGAIScreenName, value: "/index")
//        tracker.send(GAIDictionaryBuilder.createScreenView().build())
        // UA-64518089-1
    }
    
    override func awakeFromNib() {
        self.navigationController?.navigationBar.titleTextAttributes = Constants.Color.TitleDict
    }


    @IBAction func viewTypeSegmentPressed(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            listContainerView.hidden = true
            mapContainerView.hidden = false
        case 1:
            mapContainerView.hidden = true
            listContainerView.hidden = false
        default:
            break
        }
    }

}

