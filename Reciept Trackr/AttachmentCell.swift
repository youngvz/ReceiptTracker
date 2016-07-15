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
        imageView.backgroundColor = UIColor.whiteColor()
        imageView.contentMode = .ScaleAspectFit
        return imageView
        
    }()
    override func setupViews() {
        super.setupViews()
        backgroundColor = UIColor.whiteColor()
        
        addSubview(attachmentImageView)
        
        //x,y,w,h
        attachmentImageView.centerXAnchor.constraintEqualToAnchor(self.centerXAnchor).active = true
        attachmentImageView.centerYAnchor.constraintEqualToAnchor(self.centerYAnchor).active = true
        attachmentImageView.widthAnchor.constraintEqualToAnchor(self.widthAnchor).active = true
        attachmentImageView.heightAnchor.constraintEqualToAnchor(self.heightAnchor).active = true
        
    }
}
