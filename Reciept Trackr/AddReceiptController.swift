//
//  AddReceiptController.swift
//  Reciept Trackr
//
//  Created by Viraj Shah on 7/13/16.
//  Copyright © 2016 Vetek Systems. All rights reserved.
//

import UIKit

class AddReceiptController: UIViewController, UITextFieldDelegate, writeDateBackDelegate,writeCategoryBackDelegate {
    
    //UI Containers
    let inputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var attachmentContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tap)
        view.backgroundColor = UIColor.white
        return view
    }()
    
    //Merchant UI
    let merchantImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Merchant")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    let merchantLabel: UILabel = {
        let label = UILabel()
        label.text = "Merchant"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var merchantTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Merchant Name"
        tf.font = UIFont.systemFont(ofSize: 22)
        tf.textAlignment = NSTextAlignment.right
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
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "Date"
        label.textColor = UIColor.lightGray
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var dateTextLabel: UILabel = {
        let label = UILabel()
        let date = Date()
        let calendar = Calendar.current
        let components = (calendar as NSCalendar).components([.day , .month , .year], from: date)
        
        label.text = "\(components.month)" + "/" + "\(components.day)" + "/" + "\(components.year)"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textAlignment = NSTextAlignment.right
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = true
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

    //Total UI
    let totalImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Total")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    let totalLabel: UILabel = {
        let label = UILabel()
        label.text = "Total"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var totalTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "$0.00"
        tf.delegate = self
        tf.font = UIFont.systemFont(ofSize: 22)
        tf.textAlignment = NSTextAlignment.right
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
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Category"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var categoryTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Food"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textAlignment = NSTextAlignment.right
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(changeCategory)))
        return label
    }()
    
    let categoryForwardView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Forward")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
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
        label.font = UIFont.systemFont(ofSize: 22)
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let attachmentImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Attachment")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let attachmentView = showAttachmentView()
    let showCategory = showCategoryView()
    let dateView = showDateView()
    
    func showAttachment(_ image: UIImage){
        attachmentView.showAttachment(image)
    }

    func changeCategory(){
        showCategory.showCategory()
        showCategory.delegate = self
    }
    func changeDate(){
        dateView.showDates()
        dateView.delegate = self
    }
    
    func writeCategoryBack(_ value: String) {
        categoryTextLabel.text = value
    }

    func writeDateBack(_ value: String) {
        dateTextLabel.text = value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add, target: self, action: #selector(sendData))
        navigationItem.rightBarButtonItem = button
        self.navigationItem.hidesBackButton = true
        
        let backButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.stop, target: self, action: #selector(back))
        self.navigationItem.leftBarButtonItem = backButton;
        
        self.navigationItem.title = "Expense"
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)

        view.addSubview(inputsContainerView)
        view.addSubview(attachmentContainerView)
        
        setupInputsContainerView()
        setupAttachmentContainerView()
    }
    
    func back(_ sender: UIBarButtonItem) {
        attachmentView.hideAttachment()
        self.navigationController?.popViewController(animated: true)
    }
    func sendData(){
    
        attachmentView.hideAttachment()
        self.navigationController?.popViewController(animated: true)
    }


}

