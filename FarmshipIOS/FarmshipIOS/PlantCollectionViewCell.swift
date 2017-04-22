//
//  PlantCollectionViewCell.swift
//  FarmshipIOS
//
//  Created by Anilkumar kotur on 22/04/17.
//  Copyright © 2017 Anilkumar kotur. All rights reserved.
//

import UIKit

class PlantCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var plantImageView: UIImageView!
    @IBOutlet weak var plantNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func configPlantCell() {
        self.plantImageView.image = UIImage(named: "")
        self.plantNameLabel.font = UIFont.neoSansProMedium(size: 14)
        self.plantNameLabel.text = ""
    }
    
}
