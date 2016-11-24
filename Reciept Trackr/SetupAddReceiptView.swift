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
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 160).isActive = true
        
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
        merchantImageView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 6).isActive = true
        merchantImageView.topAnchor.constraint(equalTo: inputsContainerView.topAnchor).isActive = true
        merchantImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        merchantImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        merchantLabel.leftAnchor.constraint(equalTo: merchantImageView.rightAnchor, constant: 12).isActive = true
        merchantLabel.topAnchor.constraint(equalTo: inputsContainerView.topAnchor).isActive = true
        merchantLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        merchantLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        merchantTextField.leftAnchor.constraint(equalTo: merchantLabel.rightAnchor).isActive = true
        merchantTextField.centerYAnchor.constraint(equalTo: merchantLabel.centerYAnchor).isActive = true
        merchantTextField.rightAnchor.constraint(equalTo: inputsContainerView.rightAnchor, constant: -6).isActive = true
        merchantTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        merchantSeparatorView.leftAnchor.constraint(equalTo: merchantLabel.leftAnchor).isActive = true
        merchantSeparatorView.topAnchor.constraint(equalTo: merchantLabel.bottomAnchor).isActive = true
        merchantSeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        merchantSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        //Date ui Layouts
        //x,y,w,h
        dateImageView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 6).isActive = true
        dateImageView.topAnchor.constraint(equalTo: merchantImageView.bottomAnchor, constant: 12).isActive = true
        dateImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        dateImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        dateLabel.leftAnchor.constraint(equalTo: dateImageView.rightAnchor, constant: 12).isActive = true
        dateLabel.topAnchor.constraint(equalTo: merchantImageView.bottomAnchor, constant: 6).isActive = true
        dateLabel.widthAnchor.constraint(equalToConstant: 120).isActive = true
        dateLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        dateTextLabel.leftAnchor.constraint(equalTo: dateLabel.rightAnchor).isActive = true
        dateTextLabel.centerYAnchor.constraint(equalTo: dateLabel.centerYAnchor).isActive = true
        dateTextLabel.rightAnchor.constraint(equalTo: inputsContainerView.rightAnchor, constant: -6).isActive = true
        dateTextLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        dateSeparatorView.leftAnchor.constraint(equalTo: dateLabel.leftAnchor).isActive = true
        dateSeparatorView.topAnchor.constraint(equalTo: dateLabel.bottomAnchor).isActive = true
        dateSeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        dateSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        //Total ui Layouts
        //x,y,w,h
        totalImageView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 6).isActive = true
        totalImageView.topAnchor.constraint(equalTo: dateImageView.bottomAnchor, constant: 12).isActive = true
        totalImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        totalImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        totalLabel.leftAnchor.constraint(equalTo: totalImageView.rightAnchor, constant: 12).isActive = true
        totalLabel.topAnchor.constraint(equalTo: dateImageView.bottomAnchor, constant: 6).isActive = true
        totalLabel.widthAnchor.constraint(equalToConstant: 120).isActive = true
        totalLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        totalTextField.leftAnchor.constraint(equalTo: totalLabel.rightAnchor).isActive = true
        totalTextField.centerYAnchor.constraint(equalTo: totalLabel.centerYAnchor).isActive = true
        totalTextField.rightAnchor.constraint(equalTo: inputsContainerView.rightAnchor, constant: -6).isActive = true
        totalTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        totalSeparatorView.leftAnchor.constraint(equalTo: totalLabel.leftAnchor).isActive = true
        totalSeparatorView.topAnchor.constraint(equalTo: totalLabel.bottomAnchor).isActive = true
        totalSeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        totalSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        //Category ui Layouts
        //x,y,w,h
        categoryImageView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 6).isActive = true
        categoryImageView.topAnchor.constraint(equalTo: totalImageView.bottomAnchor, constant: 12).isActive = true
        categoryImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        categoryImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        categoryLabel.leftAnchor.constraint(equalTo: categoryImageView.rightAnchor, constant: 12).isActive = true
        categoryLabel.topAnchor.constraint(equalTo: totalImageView.bottomAnchor, constant: 6).isActive = true
        categoryLabel.widthAnchor.constraint(equalToConstant: 120).isActive = true
        categoryLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        categoryForwardView.rightAnchor.constraint(equalTo: inputsContainerView.rightAnchor).isActive = true
        categoryForwardView.centerYAnchor.constraint(equalTo: categoryImageView.centerYAnchor).isActive = true
        categoryForwardView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        categoryImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        categoryTextLabel.leftAnchor.constraint(equalTo: categoryLabel.rightAnchor, constant: -6).isActive = true
        categoryTextLabel.centerYAnchor.constraint(equalTo: categoryLabel.centerYAnchor).isActive = true
        categoryTextLabel.rightAnchor.constraint(equalTo: categoryForwardView.leftAnchor).isActive = true
        categoryTextLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        categorySeparatorView.leftAnchor.constraint(equalTo: categoryLabel.leftAnchor).isActive = true
        categorySeparatorView.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor).isActive = true
        categorySeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        categorySeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    func setupAttachmentContainerView(){
        //x,y,w,h
        attachmentContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        attachmentContainerView.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 6).isActive = true
        attachmentContainerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        attachmentContainerView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        attachmentContainerView.addSubview(attachmentLabel)
        attachmentContainerView.addSubview(attachmentImageView)
        
        attachmentLabel.leftAnchor.constraint(equalTo: attachmentContainerView.leftAnchor).isActive = true
        attachmentLabel.topAnchor.constraint(equalTo: attachmentContainerView.topAnchor).isActive = true
        attachmentLabel.rightAnchor.constraint(equalTo: attachmentContainerView.rightAnchor).isActive = true
        attachmentLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        attachmentImageView.rightAnchor.constraint(equalTo: attachmentContainerView.rightAnchor, constant: -12).isActive = true
        attachmentImageView.centerYAnchor.constraint(equalTo: attachmentLabel.centerYAnchor).isActive = true
        attachmentImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        attachmentImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
    }

    
}
