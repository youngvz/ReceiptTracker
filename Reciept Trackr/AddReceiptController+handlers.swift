//
//  AddReceiptController+handlers.swift
//  Reciept Trackr
//
//  Created by Viraj Shah on 7/15/16.
//  Copyright © 2016 Vetek Systems. All rights reserved.
//

import UIKit

extension AddReceiptController: UIImagePickerControllerDelegate{
    
    func handleTap(){
        attachmentView.hideAttachment()
        
        let actionSheetController: UIAlertController = UIAlertController(title: nil, message: "Choose an option", preferredStyle: .ActionSheet)
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
        }
        actionSheetController.addAction(cancelAction)
        let takePictureAction: UIAlertAction = UIAlertAction(title: "Choose From Cameral Roll", style: .Default) { action -> Void in
            
            self.handleCameraLibrary()
        }
        actionSheetController.addAction(takePictureAction)
        let choosePictureAction: UIAlertAction = UIAlertAction(title: "Take Picture", style: .Default) { action -> Void in
            
            self.handleCamera()
        }
        actionSheetController.addAction(choosePictureAction)
        
        self.presentViewController(actionSheetController, animated: true, completion: nil)
        
    }

    func handleCameraLibrary(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        
        presentViewController(picker, animated: true, completion: nil)
        
    }
    
    func handleCamera(){
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.Camera;
            imagePicker.allowsEditing = false
            self.presentViewController(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        var selectedImageFromPicker: UIImage?
        
        if let editedImage = info["UIImagePickerControllerEditedImage"] as? UIImage{
            selectedImageFromPicker = editedImage
        }else if let originalImage = info["UIImagePickerControllerOriginalImage"] as? UIImage{
            selectedImageFromPicker = originalImage
        }
        

        if let selectedImage = selectedImageFromPicker{
            showAttachment(selectedImage)
        }
        
        dismissViewControllerAnimated(true, completion: nil)
}
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        print("Did Cancel")
        dismissViewControllerAnimated(true, completion: nil)
    }
}
extension UIColor {
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
