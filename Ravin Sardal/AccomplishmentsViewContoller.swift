//
//  AccomplishmentsViewContoller.swift
//  Ravin Sardal
//
//  Created by Ravin Sardal on 4/19/15.
//  Copyright (c) 2015 Ravin Sardal. All rights reserved.
//

import Foundation
import UIKit

class AccomplishmentsViewContoller: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func accTestPrint(sender: AnyObject) {
        println("works")
    }
    
    @IBAction func backToHome(sender: AnyObject) {
        println("back to home menu")
    }
    @IBAction func openRescueMe(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://itunes.apple.com/us/app/rescue-me-i-need-help/id892281526?mt=8")!)

    }
    
    @IBAction func openMatherobicApp(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://itunes.apple.com/us/app/matherobic/id884408928?mt=8")!)
    }
}