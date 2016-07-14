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
        imageView.contentMode = .ScaleAspectFit
        return imageView
        
    }()
    override func setupViews() {
        super.setupViews()
        backgroundColor = UIColor.whiteColor()
        //do stuff here
    }
}
