//
//  UIColorHelper.swift
//  FarmshipIOS
//
//  Created by Anilkumar kotur on 22/04/17.
//  Copyright © 2017 Anilkumar kotur. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    // MARK: App navbar color /Images etc
    class func farmshipColor() -> UIColor {
        return UIColor(red:0.30, green:0.20, blue:0.10, alpha:1.00)
    }
    
}

extension UIFont {
    class func neoSansProRegular(size: CGFloat) -> UIFont? {
        return UIFont(name: "neoSansPro-Regular", size: size)
    }

    class func neoSansProMedium(size: CGFloat) -> UIFont? {
        return UIFont(name: "neoSansPro-Meduim", size: size)
    }

    class func neoSansProBold(size: CGFloat) -> UIFont? {
        return UIFont(name: "neoSansPro-Bold", size: size)
    }
}

