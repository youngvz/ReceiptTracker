//
//  AddReceiptController.swift
//  Reciept Trackr
//
//  Created by Viraj Shah on 7/13/16.
//  Copyright © 2016 Vetek Systems. All rights reserved.
//

import UIKit

class AddReceiptController: UIViewController, UITextFieldDelegate, writeDateBackDelegate,writeCategoryBackDelegate {
    
    let inputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.whiteColor()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var attachmentContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.whiteColor()
        view.translatesAutoresizingMaskIntoConstraints = false
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tap)
        return view
    }()
    
        //Merchant UI
    let merchantImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Merchant")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .ScaleAspectFill
        return imageView
    }()
    let merchantLabel: UILabel = {
        let label = UILabel()
        label.text = "Merchant"
        label.font = UIFont.systemFontOfSize(22)
        label.textColor = UIColor.darkGrayColor()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var merchantTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Merchant Name"
        tf.font = UIFont.systemFontOfSize(22)
        tf.textAlignment = NSTextAlignment.Right
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.delegate = self
        return tf
    }()
    let merchantSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //Date UI
    let dateImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Date")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .ScaleAspectFill
        return imageView
    }()
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "Date"
        label.textColor = UIColor.lightGrayColor()
        label.font = UIFont.systemFontOfSize(22)
        label.textColor = UIColor.darkGrayColor()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var dateTextLabel: UILabel = {
        let label = UILabel()
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Day , .Month , .Year], fromDate: date)
    
        label.text = "\(components.month)" + "/" + "\(components.day)" + "/" + "\(components.year)"
        label.font = UIFont.systemFontOfSize(22)
        label.textAlignment = NSTextAlignment.Right
        label.translatesAutoresizingMaskIntoConstraints = false
        label.userInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(changeDate))
        label.addGestureRecognizer(tap)
        
        return label
    }()
    let dateSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
/*******************************************************************************************
                            Declare Date View
*******************************************************************************************/
    let dateView = showDateView()
    
    func changeDate(){
        
        dateView.showDates()
        dateView.delegate = self
    }

    func writeDateBack(value: String) {
        dateTextLabel.text = value
    }
    
    //Total UI
    let totalImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Total")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .ScaleAspectFill
        return imageView
    }()
    let totalLabel: UILabel = {
        let label = UILabel()
        label.text = "Total"
        label.font = UIFont.systemFontOfSize(22)
        label.textColor = UIColor.darkGrayColor()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var totalTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "$0.00"
        tf.delegate = self
        tf.font = UIFont.systemFontOfSize(22)
        tf.textAlignment = NSTextAlignment.Right
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    let totalSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //Category UI
    let categoryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Category")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .ScaleAspectFill
        return imageView
    }()
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Category"
        label.font = UIFont.systemFontOfSize(22)
        label.textColor = UIColor.darkGrayColor()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var categoryTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Food"
        label.font = UIFont.systemFontOfSize(22)
        label.textAlignment = NSTextAlignment.Right
        label.translatesAutoresizingMaskIntoConstraints = false
        label.userInteractionEnabled = true
        label.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changeCategory)))
        return label
    }()
    
/*******************************************************************************************
                                Declare Category Views
*******************************************************************************************/

    let showCategory = showCategoryView()
    
    func changeCategory(){
        showCategory.showCategory()
        showCategory.delegate = self
    }
    
    func writeCategoryBack(value: String) {
        categoryTextLabel.text = value
    }
    
    let categoryForwardView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "Forward")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .ScaleAspectFill
        return imageView
    }()
    let categorySeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //Attachment UI
    let attachmentLabel: UILabel = {
        let label = UILabel()
        label.text = "Add Attachment"
        label.font = UIFont.systemFontOfSize(22)
        label.textAlignment = NSTextAlignment.Center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let attachmentImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Attachment")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .ScaleAspectFill
        return imageView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .Plain, target: self, action: #selector(sendData))
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        
        self.navigationItem.title = "Expense"
        
        view.addSubview(inputsContainerView)
        view.addSubview(attachmentContainerView)
        
        setupInputsContainerView()
        setupAttachmentContainerView()
    }
    func sendData(){
        
        attachmentView.hideAttachment()
        self.navigationController?.popViewControllerAnimated(true)
    }
    
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
        
        categoryTextLabel.leftAnchor.constraintEqualToAnchor(categoryLabel.rightAnchor).active = true
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
    
    let attachmentView = showAttachmentView()
    
    func showAttachment(){
        attachmentView.showAttachment()
    }
    
    func handleTap(){
        //Create the AlertController
        let actionSheetController: UIAlertController = UIAlertController(title: nil, message: "Choose an option", preferredStyle: .ActionSheet)
        
        //Create and add the Cancel action
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
            //Just dismiss the action sheet
        }
        actionSheetController.addAction(cancelAction)
        //Create and add first option action
        let takePictureAction: UIAlertAction = UIAlertAction(title: "Take Picture", style: .Default) { action -> Void in
            //Code for launching the camera goes here
            self.showAttachment()
            print("Take photo")
        }
        actionSheetController.addAction(takePictureAction)
        //Create and add a second option action
        let choosePictureAction: UIAlertAction = UIAlertAction(title: "Choose From Camera Roll", style: .Default) { action -> Void in
            //Code for picking from camera roll goes here
            print("Camera Roll")
        }
        actionSheetController.addAction(choosePictureAction)
        
        //Present the AlertController
        self.presentViewController(actionSheetController, animated: true, completion: nil)
        
    }


}
extension UIColor {
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
