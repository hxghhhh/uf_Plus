//
//  FirstViewController.swift
//  Plus
//
//  Created by Hugh A. Miles on 4/22/15.
//  Copyright (c) 2015 HAMtech. All rights reserved.
//

import UIKit
import MobileCoreServices

class Plus : UIViewController, UIImagePickerControllerDelegate, UIAlertViewDelegate, UINavigationControllerDelegate {


    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var takeBtn: UIButton!
    
    var cameraUI:UIImagePickerController = UIImagePickerController() // instantiante Picker
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       //  self.presentCamera()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Pragma mark >> Camera
    
    func presentCamera()
    {
        cameraUI = UIImagePickerController()
        cameraUI.delegate = self
        cameraUI.sourceType = UIImagePickerControllerSourceType.Camera
        cameraUI.mediaTypes = [kUTTypeImage]
        cameraUI.allowsEditing = false
        
        self.presentViewController(cameraUI, animated: true, completion: nil)
    }
    
    //Pragma mark >> Image
    func imagePickerControllerDidCancel(picker:UIImagePickerController)
    {
        self.dismissViewControllerAnimated(true, completion: nil) // cancel picker
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]!) {
        
         imageView.image = info[UIImagePickerControllerOriginalImage] as! UIImage // set selected picture to ImageView
         self.dismissViewControllerAnimated(true, completion: nil)
      
    }
    
    @IBAction func selectPhoto(sender: AnyObject) {
        let picker = UIImagePickerController()  // instantiate PickerController
        
        picker.delegate = self // reference delegate >> PickerController
        picker.sourceType = .PhotoLibrary // picker chooses from Photo library
        
        presentViewController(picker, animated: true, completion: nil) // set picker as MainViewController
        
        
    }
    
    @IBAction func takePhoto(sender: AnyObject) {
        let picker = UIImagePickerController()  // instantiate PickerController
        
        picker.delegate = self // reference delegate >> PickerController
        picker.sourceType = .Camera // picker chooses from Camera
        
        presentViewController(picker, animated: true, completion: nil) // set picker as MainViewController
        

    
    }
    
}

