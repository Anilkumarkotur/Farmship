//
//  ViewController.swift
//  FarmshipIOS
//
//  Created by Anilkumar kotur on 22/04/17.
//  Copyright © 2017 Anilkumar kotur. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var segmentController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func segmentAction(_ sender: Any) {
        if self.segmentController.selectedSegmentIndex == 0 {
            print(self.segmentController.selectedSegmentIndex)
        }
        else if self.segmentController.selectedSegmentIndex == 1 {
            print(self.segmentController.selectedSegmentIndex)
        }
        else if self.segmentController.selectedSegmentIndex == 2 {
            print(self.segmentController.selectedSegmentIndex)
        }
    }
}

