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
    @IBOutlet weak var segmentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navBarSetUp()
        self.segmentViewSetup()
    }
    
    //MARK: Actions  
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
    
    //MARK: UI Helper
    func navBarSetUp() {
        let titleLable = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 20))
        titleLable.font = UIFont.neoSansProBold(size: 16)
        titleLable.text = "Farmship"
        titleLable.textAlignment = .center
        titleLable.textColor = UIColor.white
        self.navigationItem.titleView = titleLable
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor.farmshipColor()
        self.navigationController?.navigationBar.tintColor = UIColor.farmshipColor()
        self.navigationController?.navigationBar.backgroundColor = UIColor.farmshipColor()
    }
    
    func segmentViewSetup() {
        segmentController.setTitleTextAttributes([NSFontAttributeName: UIFont.neoSansProMedium(size: 12) as Any], for: .normal)
        segmentView.layer.masksToBounds = false
        segmentView.layer.shadowColor = UIColor.black.cgColor
        segmentView.layer.shadowOffset = CGSize(width: 5, height: 5)
        segmentView.layer.shadowOpacity = 0.25
        segmentView.layer.shadowRadius = 10.0
        segmentView.layer.masksToBounds = true
    }
    

}


