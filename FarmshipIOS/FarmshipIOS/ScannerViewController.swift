
//
//  ScannerViewController.swift
//  FarmshipIOS
//
//  Created by Anilkumar kotur on 22/04/17.
//  Copyright © 2017 Anilkumar kotur. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import Firebase

class ScannerViewController: UIViewController {
    
    
    let dataBaseRef = FIRDatabase.database().reference().child("controller/1/direction")
    
     let robotDatabaseRef = FIRDatabase.database().reference().child("robot/1/")
    var lat : CLLocationDegrees
    var long : CLLocationDegrees
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        robotDatabaseRef.child("location").observe(FIRDataEventType.value, with: { (snapshot) in
            let postDict = snapshot.value as? [String : AnyObject] ?? [:]
            print(postDict);
            if let lat = postDict["lat"] {
                self.lat = lat as! CLLocationDegrees
                let coordinate = lat.doubleValue as CLLocationDegrees
                self.mapOutlet.centerCoordinate.latitude = coordinate
                
            }
            
            if let long = postDict["long"] {
                self.long = long as! CLLocationDegrees
                let coordinate = long.doubleValue as CLLocationDegrees
                self.mapOutlet.centerCoordinate.latitude = coordinate
            }
            
            let annotation:MKAnnotation
//            annotation.coordinate.latitude = self.lat
//            annotation.coordinate.longitude = self.long
                //MKAnnotation(coordinate: CLLocationCoordinate2DMake(self.lat, self.long))
        
            self.mapOutlet.addAnnotation(annotation)
        })
    }
    
    
    @IBOutlet weak var mapOutlet: MKMapView!
    
    
    @IBAction func stopButtonDidTouch(_ sender: Any){
        print("stop on touch")
        self.upDateDbOnActions(value: "x")
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
