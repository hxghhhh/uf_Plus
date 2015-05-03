//
//  Message.swift
//  Plus
//
//  Created by Hugh A. Miles on 4/22/15.
//  Copyright (c) 2015 HAMtech. All rights reserved.
//

import UIKit

class Message: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var myCellLabel: UILabel!
    
    let swiftBlogs = ["Progress", "Strength Exercises", "Activites", "Achieved Goal Congratulations", "Next Message", "Then the Message After That", "And So on..."]
    
    let textCellIdentifier = "TextCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self       //connect tableview to delegates/DataSource
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        // change status bar colors to white letters
        return UIStatusBarStyle.LightContent
    }
    
    
    //DataSourceSegement////////////////

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftBlogs.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath) as! UITableViewCell
        
        let row = indexPath.row
        cell.textLabel?.text = swiftBlogs[row]
        
        return cell
    }

    
    //UITableViewSegement////////////////

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        println(swiftBlogs[row]) // NS Log(cell.text)
    }
    
    
}