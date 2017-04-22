
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
    
    
    let dataBaseRef = FIRDatabase.database().reference().child("controller/1/direction")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func leftButtonDidTouch(_ sender: Any) {
        print("left on touch")
        self.upDateDbOnActions(value: "a")
    }
    
    @IBAction func leftButtonOnRelase(_ sender: Any) {
        print("left on release")
        self.upDateDbOnActions(value: "x")
    }

    
    @IBAction func upButtonDidTouch(_ sender: Any) {
        print("up on touch")
        self.upDateDbOnActions(value: "w")
    }
    
    @IBAction func upButtonOnRelease(_ sender: Any) {
        print("up on release")
        self.upDateDbOnActions(value: "x")
    }
    
    @IBAction func rightButtonDidTouch(_ sender: Any) {
        print("right on touch")
        self.upDateDbOnActions(value: "s")
    }
    
    @IBAction func rightButtonOnRelease(_ sender: Any) {
        print("right on release")
        self.upDateDbOnActions(value: "x")
    }
    
    @IBAction func downButtonDidTouch(_ sender: Any) {
        print("down on touch")
        self.upDateDbOnActions(value: "d")
    }
    
    @IBAction func downButtonOnrelease(_ sender: Any) {
        print("down on release")
        self.upDateDbOnActions(value: "x")
    }
    
    
    func upDateDbOnActions(value: String)  {
        dataBaseRef.setValue(value)
    }
    
}
