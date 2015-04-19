//
//  ProfileViewController.swift
//  Ravin Sardal
//
//  Created by Ravin Sardal on 4/18/15.
//  Copyright (c) 2015 Ravin Sardal. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sayHello(sender: AnyObject) {
        println("Hello!!")
    }
    
    @IBAction func aboutMe(sender: AnyObject) {
        println("About Me")
    }
    
    @IBAction func apple(sender: AnyObject) {
        println("Apple")
        // We can either put an Apple logo here or put
        // your name and profile picture inside an Apple
        // logo.
    }
    @IBAction func wwdc(sender: AnyObject) {
        println("WWDC 2015")
        // Say why you want to go to WWDC, what you 
        // hope to learn, and what you will do after
        // gaining your new knowledge.
    }
    
    @IBAction func accomplishments(sender: AnyObject) {
        println("Accomplishments")
        // Here you will place your coding experience.
    }
    
    
}