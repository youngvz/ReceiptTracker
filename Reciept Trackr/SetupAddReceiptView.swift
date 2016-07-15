//
//  SetupAddReceiptView.swift
//  Reciept Trackr
//
//  Created by Viraj Shah on 7/15/16.
//  Copyright © 2016 Vetek Systems. All rights reserved.
//

import UIKit

extension AddReceiptController: UINavigationControllerDelegate{
    
    func setupInputsContainerView(){
        //x,y,w,h constraints
        inputsContainerView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        inputsContainerView.topAnchor.constraintEqualToAnchor(view.topAnchor, constant: 70).active = true
        inputsContainerView.widthAnchor.constraintEqualToAnchor(view.widthAnchor).active = true
        inputsContainerView.heightAnchor.constraintEqualToConstant(160).active = true
        
        inputsContainerView.addSubview(merchantImageView)
        inputsContainerView.addSubview(merchantLabel)
        inputsContainerView.addSubview(merchantTextField)
        inputsContainerView.addSubview(merchantSeparatorView)
        
        inputsContainerView.addSubview(dateImageView)
        inputsContainerView.addSubview(dateLabel)
        inputsContainerView.addSubview(dateTextLabel)
        inputsContainerView.addSubview(dateSeparatorView)
        
        inputsContainerView.addSubview(totalImageView)
        inputsContainerView.addSubview(totalLabel)
        inputsContainerView.addSubview(totalTextField)
        inputsContainerView.addSubview(totalSeparatorView)
        
        
        inputsContainerView.addSubview(categoryImageView)
        inputsContainerView.addSubview(categoryLabel)
        inputsContainerView.addSubview(categoryTextLabel)
        inputsContainerView.addSubview(categoryForwardView)
        inputsContainerView.addSubview(categorySeparatorView)
        
        
        //merchant ui layouts
        //x,y,w,h constraints
        merchantImageView.leftAnchor.constraintEqualToAnchor(inputsContainerView.leftAnchor, constant: 6).active = true
        merchantImageView.topAnchor.constraintEqualToAnchor(inputsContainerView.topAnchor).active = true
        merchantImageView.widthAnchor.constraintEqualToConstant(30).active = true
        merchantImageView.heightAnchor.constraintEqualToConstant(30).active = true
        
        merchantLabel.leftAnchor.constraintEqualToAnchor(merchantImageView.rightAnchor, constant: 12).active = true
        merchantLabel.topAnchor.constraintEqualToAnchor(inputsContainerView.topAnchor).active = true
        merchantLabel.widthAnchor.constraintEqualToConstant(100).active = true
        merchantLabel.heightAnchor.constraintEqualToConstant(40).active = true
        
        merchantTextField.leftAnchor.constraintEqualToAnchor(merchantLabel.rightAnchor).active = true
        merchantTextField.centerYAnchor.constraintEqualToAnchor(merchantLabel.centerYAnchor).active = true
        merchantTextField.rightAnchor.constraintEqualToAnchor(inputsContainerView.rightAnchor, constant: -6).active = true
        merchantTextField.heightAnchor.constraintEqualToConstant(40).active = true
        
        merchantSeparatorView.leftAnchor.constraintEqualToAnchor(merchantLabel.leftAnchor).active = true
        merchantSeparatorView.topAnchor.constraintEqualToAnchor(merchantLabel.bottomAnchor).active = true
        merchantSeparatorView.widthAnchor.constraintEqualToAnchor(inputsContainerView.widthAnchor).active = true
        merchantSeparatorView.heightAnchor.constraintEqualToConstant(1).active = true
        
        
        //Date ui Layouts
        //x,y,w,h
        dateImageView.leftAnchor.constraintEqualToAnchor(inputsContainerView.leftAnchor, constant: 6).active = true
        dateImageView.topAnchor.constraintEqualToAnchor(merchantImageView.bottomAnchor, constant: 12).active = true
        dateImageView.widthAnchor.constraintEqualToConstant(30).active = true
        dateImageView.heightAnchor.constraintEqualToConstant(30).active = true
        
        
        dateLabel.leftAnchor.constraintEqualToAnchor(dateImageView.rightAnchor, constant: 12).active = true
        dateLabel.topAnchor.constraintEqualToAnchor(merchantImageView.bottomAnchor, constant: 6).active = true
        dateLabel.widthAnchor.constraintEqualToConstant(120).active = true
        dateLabel.heightAnchor.constraintEqualToConstant(40).active = true
        
        dateTextLabel.leftAnchor.constraintEqualToAnchor(dateLabel.rightAnchor).active = true
        dateTextLabel.centerYAnchor.constraintEqualToAnchor(dateLabel.centerYAnchor).active = true
        dateTextLabel.rightAnchor.constraintEqualToAnchor(inputsContainerView.rightAnchor, constant: -6).active = true
        dateTextLabel.heightAnchor.constraintEqualToConstant(35).active = true
        
        dateSeparatorView.leftAnchor.constraintEqualToAnchor(dateLabel.leftAnchor).active = true
        dateSeparatorView.topAnchor.constraintEqualToAnchor(dateLabel.bottomAnchor).active = true
        dateSeparatorView.widthAnchor.constraintEqualToAnchor(inputsContainerView.widthAnchor).active = true
        dateSeparatorView.heightAnchor.constraintEqualToConstant(1).active = true
        
        //Total ui Layouts
        //x,y,w,h
        totalImageView.leftAnchor.constraintEqualToAnchor(inputsContainerView.leftAnchor, constant: 6).active = true
        totalImageView.topAnchor.constraintEqualToAnchor(dateImageView.bottomAnchor, constant: 12).active = true
        totalImageView.widthAnchor.constraintEqualToConstant(30).active = true
        totalImageView.heightAnchor.constraintEqualToConstant(30).active = true
        
        totalLabel.leftAnchor.constraintEqualToAnchor(totalImageView.rightAnchor, constant: 12).active = true
        totalLabel.topAnchor.constraintEqualToAnchor(dateImageView.bottomAnchor, constant: 6).active = true
        totalLabel.widthAnchor.constraintEqualToConstant(120).active = true
        totalLabel.heightAnchor.constraintEqualToConstant(40).active = true
        
        totalTextField.leftAnchor.constraintEqualToAnchor(totalLabel.rightAnchor).active = true
        totalTextField.centerYAnchor.constraintEqualToAnchor(totalLabel.centerYAnchor).active = true
        totalTextField.rightAnchor.constraintEqualToAnchor(inputsContainerView.rightAnchor, constant: -6).active = true
        totalTextField.heightAnchor.constraintEqualToConstant(35).active = true
        
        totalSeparatorView.leftAnchor.constraintEqualToAnchor(totalLabel.leftAnchor).active = true
        totalSeparatorView.topAnchor.constraintEqualToAnchor(totalLabel.bottomAnchor).active = true
        totalSeparatorView.widthAnchor.constraintEqualToAnchor(inputsContainerView.widthAnchor).active = true
        totalSeparatorView.heightAnchor.constraintEqualToConstant(1).active = true
        
        //Category ui Layouts
        //x,y,w,h
        categoryImageView.leftAnchor.constraintEqualToAnchor(inputsContainerView.leftAnchor, constant: 6).active = true
        categoryImageView.topAnchor.constraintEqualToAnchor(totalImageView.bottomAnchor, constant: 12).active = true
        categoryImageView.widthAnchor.constraintEqualToConstant(30).active = true
        categoryImageView.heightAnchor.constraintEqualToConstant(30).active = true
        
        categoryLabel.leftAnchor.constraintEqualToAnchor(categoryImageView.rightAnchor, constant: 12).active = true
        categoryLabel.topAnchor.constraintEqualToAnchor(totalImageView.bottomAnchor, constant: 6).active = true
        categoryLabel.widthAnchor.constraintEqualToConstant(120).active = true
        categoryLabel.heightAnchor.constraintEqualToConstant(40).active = true
        
        categoryForwardView.rightAnchor.constraintEqualToAnchor(inputsContainerView.rightAnchor).active = true
        categoryForwardView.centerYAnchor.constraintEqualToAnchor(categoryImageView.centerYAnchor).active = true
        categoryForwardView.widthAnchor.constraintEqualToConstant(30).active = true
        categoryImageView.heightAnchor.constraintEqualToConstant(30).active = true
        
        categoryTextLabel.leftAnchor.constraintEqualToAnchor(categoryLabel.rightAnchor, constant: -6).active = true
        categoryTextLabel.centerYAnchor.constraintEqualToAnchor(categoryLabel.centerYAnchor).active = true
        categoryTextLabel.rightAnchor.constraintEqualToAnchor(categoryForwardView.leftAnchor).active = true
        categoryTextLabel.heightAnchor.constraintEqualToConstant(30).active = true
        
        categorySeparatorView.leftAnchor.constraintEqualToAnchor(categoryLabel.leftAnchor).active = true
        categorySeparatorView.topAnchor.constraintEqualToAnchor(categoryLabel.bottomAnchor).active = true
        categorySeparatorView.widthAnchor.constraintEqualToAnchor(inputsContainerView.widthAnchor).active = true
        categorySeparatorView.heightAnchor.constraintEqualToConstant(1).active = true
        
    }
    func setupAttachmentContainerView(){
        //x,y,w,h
        attachmentContainerView.leftAnchor.constraintEqualToAnchor(view.leftAnchor).active = true
        attachmentContainerView.topAnchor.constraintEqualToAnchor(inputsContainerView.bottomAnchor, constant: 6).active = true
        attachmentContainerView.widthAnchor.constraintEqualToAnchor(view.widthAnchor).active = true
        attachmentContainerView.heightAnchor.constraintEqualToConstant(40).active = true
        
        attachmentContainerView.addSubview(attachmentLabel)
        attachmentContainerView.addSubview(attachmentImageView)
        
        attachmentLabel.leftAnchor.constraintEqualToAnchor(attachmentContainerView.leftAnchor).active = true
        attachmentLabel.topAnchor.constraintEqualToAnchor(attachmentContainerView.topAnchor).active = true
        attachmentLabel.rightAnchor.constraintEqualToAnchor(attachmentContainerView.rightAnchor).active = true
        attachmentLabel.heightAnchor.constraintEqualToConstant(40).active = true
        
        attachmentImageView.rightAnchor.constraintEqualToAnchor(attachmentContainerView.rightAnchor, constant: -12).active = true
        attachmentImageView.centerYAnchor.constraintEqualToAnchor(attachmentLabel.centerYAnchor).active = true
        attachmentImageView.widthAnchor.constraintEqualToConstant(30).active = true
        attachmentImageView.heightAnchor.constraintEqualToConstant(30).active = true
        
        
    }

    
}
