
//
//  ScannerViewController.swift
//  FarmshipIOS
//
//  Created by Anilkumar kotur on 22/04/17.
//  Copyright © 2017 Anilkumar kotur. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class ScannerViewController: UIViewController {
    
    
    let dataBaseRef = FIR
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func leftButtonDidTouch(_ sender: Any) {
        print("left on touch")
    }
    
    
    @IBAction func leftButtonOnRelase(_ sender: Any) {
        print("left on release")
    }

    
    @IBAction func upButtonDidTouch(_ sender: Any) {
        print("up on touch")
    }
    
    @IBAction func upButtonOnRelease(_ sender: Any) {
        print("up on release")
    }
    
    @IBAction func rightButtonDidTouch(_ sender: Any) {
     print("right on touch")
    }
    
    @IBAction func rightButtonOnRelease(_ sender: Any) {
        print("right on release")
    }
    
    @IBAction func downButtonDidTouch(_ sender: Any) {
        print("down on touch")
    }
    
    @IBAction func downButtonOnrelease(_ sender: Any) {
        print("down on release")
    }
    
    
}
