//
//  CategoryCell.swift
//  Reciept Trackr
//
//  Created by Viraj Shah on 7/14/16.
//  Copyright © 2016 Vetek Systems. All rights reserved.
//

import UIKit


class BaseCell: UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews(){
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class CategoryCell: BaseCell {
    
    
    
    override var highlighted: Bool{
        didSet{
            backgroundColor = highlighted ? UIColor.darkGrayColor() : UIColor.whiteColor()
            
            nameLabel.textColor = highlighted ? UIColor.whiteColor() : UIColor.blackColor()
            
            iconImageView.tintColor = highlighted ? UIColor.whiteColor() : UIColor.darkGrayColor()
        }
    }
    
    var category: Category?{
        didSet{
             nameLabel.text = category?.name
            
            if let imageName = category?.imageName{
                iconImageView.image = UIImage(named: imageName)?.imageWithRenderingMode(.AlwaysTemplate)
                iconImageView.tintColor = UIColor.darkGrayColor()
            }
        }
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFontOfSize(22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let iconImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.contentMode = .ScaleAspectFit
    return imageView
    
    }()
    
    override func setupViews () {
        super.setupViews()
        
        backgroundColor = UIColor.whiteColor()
        addSubview(nameLabel)
        addSubview(iconImageView)
        
        
        iconImageView.leftAnchor.constraintEqualToAnchor(self.leftAnchor, constant: 6).active = true
        iconImageView.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor, constant: -15).active = true
        iconImageView.widthAnchor.constraintEqualToConstant(30).active = true
        iconImageView.heightAnchor.constraintEqualToConstant(30).active = true
        
        //x,y,w,h
        nameLabel.leftAnchor.constraintEqualToAnchor(iconImageView.rightAnchor, constant: 6).active = true
        nameLabel.centerYAnchor.constraintEqualToAnchor(iconImageView.centerYAnchor).active = true
        nameLabel.widthAnchor.constraintEqualToAnchor(self.widthAnchor).active = true
        nameLabel.heightAnchor.constraintEqualToAnchor(self.heightAnchor).active = true
        
    }
}