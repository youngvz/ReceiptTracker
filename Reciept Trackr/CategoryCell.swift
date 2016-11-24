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
    
    override var isHighlighted: Bool{
        didSet{
            backgroundColor = isHighlighted ? UIColor.darkGray : UIColor.white
            
            nameLabel.textColor = isHighlighted ? UIColor.white : UIColor.black
            
            iconImageView.tintColor = isHighlighted ? UIColor.white : UIColor.darkGray
        }
    }
    
    var category: Category?{
        didSet{
             nameLabel.text = category?.name
            
            if let imageName = category?.imageName{
                iconImageView.image = UIImage(named: imageName)?.withRenderingMode(.alwaysTemplate)
                iconImageView.tintColor = UIColor.darkGray
            }
        }
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let iconImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.contentMode = .scaleAspectFit
    return imageView
    
    }()
    
    override func setupViews () {
        super.setupViews()
        
        backgroundColor = UIColor.white
        addSubview(nameLabel)
        addSubview(iconImageView)
        
        
        iconImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 6).isActive = true
        iconImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //x,y,w,h
        nameLabel.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 6).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: iconImageView.centerYAnchor).isActive = true
        nameLabel.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        nameLabel.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
    }
}
