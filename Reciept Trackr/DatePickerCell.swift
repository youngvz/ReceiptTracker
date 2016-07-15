//
//  DatePickerCell.swift
//  Reciept Trackr
//
//  Created by Viraj Shah on 7/14/16.
//  Copyright © 2016 Vetek Systems. All rights reserved.
//

import UIKit


class DatePickerCell: BaseCell {
    
    var delegate: writeDateBackDelegate?
    
    lazy var datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.timeZone = NSTimeZone.localTimeZone()
        datePicker.backgroundColor = UIColor.whiteColor()
        datePicker.layer.cornerRadius = 5.0
        datePicker.layer.shadowOpacity = 0.5
        datePicker.datePickerMode = UIDatePickerMode.Date
        datePicker.addTarget(self, action: #selector(onDidChangeDate), forControlEvents: .ValueChanged)
        return datePicker
    }()
        
    
    func onDidChangeDate(sender: UIDatePicker){
        // date format
        let myDateFormatter: NSDateFormatter = NSDateFormatter()
        myDateFormatter.dateFormat = "MM/dd/yyyy"
        
        // get the date string applied date format
        let mySelectedDate: NSString = myDateFormatter.stringFromDate(sender.date)
        
        delegate?.writeDateBack(mySelectedDate as String)
        print(mySelectedDate as String)
        

    }
    
    override func setupViews () {
        super.setupViews()
        
        addSubview(datePicker)

        //        //x,y,w,h
                datePicker.leftAnchor.constraintEqualToAnchor(self.leftAnchor).active = true
                datePicker.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor).active = true
                datePicker.widthAnchor.constraintEqualToAnchor(self.widthAnchor).active = true
                datePicker.heightAnchor.constraintEqualToAnchor(self.heightAnchor).active = true

        
    }
    
    
}