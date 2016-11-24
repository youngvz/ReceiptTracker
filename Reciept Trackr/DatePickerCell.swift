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
        datePicker.timeZone = TimeZone.autoupdatingCurrent
        datePicker.backgroundColor = UIColor.white
        datePicker.layer.cornerRadius = 5.0
        datePicker.layer.shadowOpacity = 0.5
        datePicker.datePickerMode = UIDatePickerMode.date
        datePicker.addTarget(self, action: #selector(onDidChangeDate), for: .valueChanged)
        return datePicker
    }()
        
    
    func onDidChangeDate(_ sender: UIDatePicker){
        // date format
        let myDateFormatter: DateFormatter = DateFormatter()
        myDateFormatter.dateFormat = "MM/dd/yyyy"
        
        // get the date string applied date format
        let mySelectedDate: NSString = myDateFormatter.string(from: sender.date) as NSString
        
        delegate?.writeDateBack(mySelectedDate as String)
        print(mySelectedDate as String)
        

    }
    
    override func setupViews () {
        super.setupViews()
        
        addSubview(datePicker)

        //        //x,y,w,h
                datePicker.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
                datePicker.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
                datePicker.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
                datePicker.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true

        
    }
    
    
}
