//
//  AccomplishmentsViewContoller.swift
//  Ravin Sardal
//
//  Created by Ravin Sardal on 4/19/15.
//  Copyright (c) 2015 Ravin Sardal. All rights reserved.
//

import Foundation
import UIKit

class AccomplishmentsViewContoller: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBOutlet var openYoutubeChannelButton: UIButton!
    @IBOutlet var watchKitLabTestView: UITextView!
    @IBOutlet var watckKitLabImage: UIImageView!
    @IBOutlet var matherobicLabel: UILabel!
    @IBOutlet var rescueMeLabel: UILabel!
    @IBOutlet var rescueMeAppButton: UIButton!
    @IBOutlet var matherobicAppButton: UIButton!
    var arr:NSArray = []
    //FBLA, Apple Apps, Summer Internship, PebbleApps
    
    @IBOutlet var myTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.sharedApplication().statusBarHidden = true
        // Do any additional setup after loading the view, typically from a nib.
        arr = ["Apple Watch Preview","Apple WatchKit Tutorials","Apple Apps","Pebble Apps","Hackathons", "Summer Internship", "Future Business Leaders of America"]
        
        self.hideButtonsShowText()
        self.myTextView.hidden = true
        self.openYoutubeChannelButton.alpha = 0.0
        self.watckKitLabImage.alpha = 1.0
        self.watchKitLabTestView.alpha = 1.0
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    override func prefersStatusBarHidden() -> Bool {
        return true;
    }
    */
    
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
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return "\(arr[row])"
    }
    
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //myLabel.text = "\(component)"
        
        if(row == 0){
            //Apple watch preview
            self.hideButtonsShowText()
            self.myTextView.hidden = true
            self.openYoutubeChannelButton.alpha = 0.0
            self.watchKitLabTestView.alpha = 1.0
            self.watckKitLabImage.alpha = 1.0
        }else if(row == 6){
            //fbla
            self.hideButtonsShowText()
            self.openYoutubeChannelButton.alpha = 0.0
            self.myTextView.text = "Last year in Homestead Highschool I was part of a club called Future Business Leaders of America. I choose to take part in technology-related commpetitions. Last summer I placed First in California State for Database Design and Applications and went on to represent my school in Nationals."
        }else if(row == 2){
            //apple apps
            self.openYoutubeChannelButton.alpha = 0.0
            self.watchKitLabTestView.alpha = 0.0
            self.watckKitLabImage.alpha = 0.0
            self.myTextView.hidden = true;
            self.rescueMeAppButton.enabled = true;
            self.rescueMeAppButton.hidden = false;
            self.matherobicAppButton.enabled = true;
            self.matherobicAppButton.hidden = false;
            self.rescueMeLabel.alpha = 1.0
            self.matherobicLabel.alpha = 1.0
        }else if(row == 5){
            //internship
            self.hideButtonsShowText()
            self.openYoutubeChannelButton.alpha = 0.0
            self.myTextView.text = "This summer I will intern at Ford Motor Company in the iOS Development division and will be working on Apple Watch Apps for vehicles. I am beyond excited for the opportunity to impact the lives of a plethora of drivers."
        }else if(row == 3){
            //pebble apps
            self.hideButtonsShowText()
            self.openYoutubeChannelButton.alpha = 0.0
            self.myTextView.text = "I have developed various Pebble SmartWatch Apps for the Pebble SmartWatch that have thousands of users each. One of my popular apps is Where Am I? With a flick of the wrist the app provides the user with approximate street address."
        }else if(row == 1){
            //Apple Watckit tutorials
            self.hideButtonsShowText()
            self.openYoutubeChannelButton.alpha = 1.0
            self.myTextView.text = "I have a YouTube channel for tutorials on Apple WatchKit development. The channel has a several hundred subscribers, and over 25,000 views."
        }else if(row == 4){
            //hackathons
            self.hideButtonsShowText()
            self.openYoutubeChannelButton.alpha = 0.0
            self.myTextView.text = "Coding is my passion. One way I like to indulge in this obsession is by participating in hackathons. I have won at many hackathons such as CalHacks. At CalHacks I created an application that take car data such as speed, send it to the cloud, analyzes it, and provides haptic feedback in the vehicle such as steering wheel vibration."
        }

    }
    func hideButtonsShowText(){
        //self.myTextView.enabled = false;
        self.watchKitLabTestView.alpha = 0.0
        self.watckKitLabImage.alpha = 0.0
        self.rescueMeLabel.alpha = 0.0
        self.matherobicLabel.alpha = 0.0
        self.rescueMeAppButton.enabled = false;
        self.rescueMeAppButton.hidden = true;
        self.matherobicAppButton.enabled = false;
        self.matherobicAppButton.hidden = true;
        self.myTextView.hidden = false;
    }
    
    @IBAction func openYoutubeChannel(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://www.youtube.com/playlist?list=PLPXQAmNk2rv1XXVfJY4g1rpPXtxPVyNt2")!)
    }
    
}