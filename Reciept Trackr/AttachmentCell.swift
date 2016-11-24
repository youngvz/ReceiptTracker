//
//  AttachmentCell.swift
//  Reciept Trackr
//
//  Created by Viraj Shah on 7/14/16.
//  Copyright © 2016 Vetek Systems. All rights reserved.
//

import UIKit

class AttachmentCell: BaseCell {
    
    let attachmentImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = UIColor.white
        imageView.contentMode = .scaleAspectFit
        return imageView
        
    }()
    override func setupViews() {
        super.setupViews()
        backgroundColor = UIColor.white
        
        addSubview(attachmentImageView)
        
        //x,y,w,h
        attachmentImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        attachmentImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        attachmentImageView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        attachmentImageView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
    }
}
