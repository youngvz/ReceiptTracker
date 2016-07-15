//
//  showAttachmentView.swift
//  Reciept Trackr
//
//  Created by Viraj Shah on 7/14/16.
//  Copyright © 2016 Vetek Systems. All rights reserved.
//

import UIKit

class showAttachmentView: NSObject, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var selectedImage: UIImage?
    let blackView = UIView()
    let cellId = "cellId"

    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = UIColor.whiteColor()
        
        return cv
    }()
    
    func showAttachment(image: UIImage){
        
        selectedImage = image
        collectionView.reloadData()
        if let window = UIApplication.sharedApplication().keyWindow{
            
            window.addSubview(collectionView)
            
            let height: CGFloat = 200
            collectionView.frame = CGRectMake(0, window.frame.height, window.frame.width, height)
            
            UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseOut, animations: {
                self.blackView.alpha = 1
                self.collectionView.frame = CGRectMake(0, 280, self.collectionView.frame.width, self.collectionView.frame.height)
                }, completion: nil)
        }
        
        
    }
    
    func hideAttachment(){
        if let window = UIApplication.sharedApplication().keyWindow{
            self.collectionView.frame = CGRectMake(0, window.frame.height, self.collectionView.frame.width, self.collectionView.frame.height)
            self.collectionView.reloadData()
        }
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(collectionView.frame.width, collectionView.frame.height)
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellId, forIndexPath: indexPath) as! AttachmentCell
        
        cell.attachmentImageView.image = selectedImage
        
        return cell
    }
    
    override init() {
        super.init()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.registerClass(AttachmentCell.self, forCellWithReuseIdentifier: cellId)
    }

}