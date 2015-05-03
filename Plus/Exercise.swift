//
//  Exercise.swift
//  Plus
//
//  Created by Hugh A. Miles on 4/22/15.
//  Copyright (c) 2015 HAMtech. All rights reserved.
//

import UIKit
                                        //implement data source
class Exercise: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource, UIAlertViewDelegate {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myPicker: UIPickerView!
    
    let pickerData = ["Running","Swimming","Biking","Yoga", "Pilaties","Climbing","Weightlifhting", "Rowing"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myPicker.delegate = self   // set pickers to super
        myPicker.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        // change status bar colors to white letters
        return UIStatusBarStyle.LightContent
    }
    
    //MARK: - Delegates and datasources
    //MARK: Data Sources
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      //  myLabel.text = pickerData[row]
    }

    @IBAction func pushSaveBtn(sender: AnyObject) {
        
        var alert:UIAlertView = UIAlertView()
        alert.title = "Saved!"
        alert.message = "Your workout has been logged into the system"
        alert.delegate = self
        alert.addButtonWithTitle("Awesome")
        alert.show()
    }
    
}
