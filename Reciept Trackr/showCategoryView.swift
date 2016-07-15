//
//  showCategoryView.swift
//  Reciept Trackr
//
//  Created by Viraj Shah on 7/13/16.
//  Copyright © 2016 Vetek Systems. All rights reserved.
//

import UIKit

class Category: NSObject{
    let name: String
    let imageName: String
    
    init(name:String, imageName:String) {
        self.name = name
        self.imageName = imageName
    }
}

class showCategoryView: NSObject, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var delegate: writeCategoryBackDelegate?
    let blackView = UIView()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = UIColor.whiteColor()
        return cv
    }()
    
    let cellId = "cellId"
    
    let categories: [Category] = {
        
        
        return [Category(name: "Auto & Transport", imageName: "Merchant"),Category(name: "Bills & Utilities", imageName: "Total"),Category(name: "Business Services", imageName: "Merchant"),Category(name: "Education", imageName: "Forward"),Category(name: "Entertainment", imageName: "Forward"),Category(name: "Fees & Charges", imageName: "Total"),Category(name: "Food & Dining", imageName: "Forward"),Category(name: "Travel", imageName: "Date")]
    }()
    
    func showCategory(){
        
        
        if let window = UIApplication.sharedApplication().keyWindow{
            
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.5)
            
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleDismiss)))
            
            window.addSubview(blackView)
            window.addSubview(collectionView)
            
            let height: CGFloat = 430
            
            let y = window.frame.height - height
            collectionView.frame = CGRectMake(0, window.frame.height, window.frame.width, height)
            
            blackView.frame = window.frame
            blackView.alpha = 0
            
            UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseOut, animations: {
                self.blackView.alpha = 1
                self.collectionView.frame = CGRectMake(0, y, self.collectionView.frame.width, self.collectionView.frame.height)
                }, completion: nil)
        }
        
    }
    func handleDismiss(){
        UIView.animateWithDuration(0.5) {
            self.blackView.alpha = 0
            if let window = UIApplication.sharedApplication().keyWindow{
                self.collectionView.frame = CGRectMake(0, window.frame.height, self.collectionView.frame.width, self.collectionView.frame.height)
                
            }
            
        }
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(collectionView.frame.width, 60)

    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let cell = collectionView.cellForItemAtIndexPath(indexPath) as! CategoryCell
        
        delegate?.writeCategoryBack(cell.nameLabel.text!)
        handleDismiss()
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellId, forIndexPath: indexPath) as! CategoryCell
        let category = categories[indexPath.item]
        cell.category = category
        
        return cell
    }
    
    override init() {
        super.init()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.registerClass(CategoryCell.self, forCellWithReuseIdentifier: cellId)
    }
}
