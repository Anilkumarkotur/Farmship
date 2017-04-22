//
//  tabbarController.swift
//  FarmshipIOS
//
//  Created by Anilkumar kotur on 22/04/17.
//  Copyright © 2017 Anilkumar kotur. All rights reserved.
//

import Foundation
import UIKit

class tabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navBarSetUp()
    }
    
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

}
