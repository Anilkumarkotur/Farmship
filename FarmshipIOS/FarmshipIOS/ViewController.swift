//
//  ViewController.swift
//  FarmshipIOS
//
//  Created by Anilkumar kotur on 22/04/17.
//  Copyright © 2017 Anilkumar kotur. All rights reserved.
//

import UIKit

let identifer = "PlantCollectionViewCellID"

class HomeViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var segmentController: UISegmentedControl!
    @IBOutlet weak var segmentView: UIView!
    @IBOutlet weak var theCollectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navBarSetUp()
        self.segmentViewSetup()
        theCollectionView.backgroundColor = UIColor.blue
        
        let nibName = UINib(nibName: "PlantCollectionViewCell", bundle:nil)
        theCollectionView.register(nibName, forCellWithReuseIdentifier: identifer)
        theCollectionView.delegate = self

        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumInteritemSpacing = 2
        flowLayout.minimumLineSpacing = 6
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
        titleLable.font = UIFont.systemFont(ofSize: 16)
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
        segmentController.setTitleTextAttributes([NSFontAttributeName: UIFont.systemFont(ofSize: 12) as Any], for: .normal)
        segmentView.layer.masksToBounds = false
        segmentView.layer.shadowColor = UIColor.black.cgColor
        segmentView.layer.shadowOffset = CGSize(width: 5, height: 5)
        segmentView.layer.shadowOpacity = 0.25
        segmentView.layer.shadowRadius = 10.0
        segmentView.layer.masksToBounds = true
    }
    
    //MARK: CollectionViewDelegate CollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: identifer, for: indexPath) as! PlantCollectionViewCell
        cell.backgroundColor = UIColor.red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
    //MARK: CollectionViewDelegateFlowLayout
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width / 2  - 15 , height: self.view.frame.size.width / 2 - 15)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(6, 6, 6, 6)
    }

}


