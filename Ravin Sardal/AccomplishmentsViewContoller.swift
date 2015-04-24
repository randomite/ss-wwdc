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
    
    @IBOutlet var rescueMeAppButton: UIButton!
    @IBOutlet var matherobicAppButton: UIButton!
    var arr:NSArray = []
    //FBLA, Apple Apps, Summer Internship, PebbleApps
    
    @IBOutlet var myTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        arr = ["FBLA", "Apple Apps", "Summer Internship", "PebbleApps","Apple WatchKit Tutorials", "Hackathons"]
        
        self.myTextView.text = "Last year in Homestead Highschool I was part of a club called Future Business Leaders of America. I choose to take part in technology-related commpetitions. Last summer I placed First in California State for Database Design and Applications and went on to represent my school in Nationals."
        self.hideButtonsShowText()
        
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
            self.hideButtonsShowText()
            self.myTextView.text = "Last year in Homestead Highschool I was part of a club called Future Business Leaders of America. I choose to take part in technology-related commpetitions. Last summer I placed First in California State for Database Design and Applications and went on to represent my school in Nationals."
        }else if(row == 1){
            self.myTextView.hidden = true;
            self.rescueMeAppButton.enabled = true;
            self.rescueMeAppButton.hidden = false;
            self.matherobicAppButton.enabled = true;
            self.matherobicAppButton.hidden = false;
        }else if(row == 2){
            self.hideButtonsShowText()
            self.myTextView.text = "This coming summer I will be an iOS intern for Ford Motors."
        }else if(row == 3){
            self.hideButtonsShowText()
            self.myTextView.text = "I have developed various Pebble SmartWatch Applications for the Pebble SmartWatch. These applications range from hundreds to thousands of users each."
        }else if(row == 4){
            self.hideButtonsShowText()
            self.myTextView.text = "I make tutorials on youtube for people to learn Apple WatchKit development. I have over 25,000 views and a few hundred subscribers."
        }else if(row == 5){
            self.hideButtonsShowText()
            self.myTextView.text = "I have won many hackathons, here is a list:"
        }

    }
    func hideButtonsShowText(){
        //self.myTextView.enabled = false;
        self.rescueMeAppButton.enabled = false;
        self.rescueMeAppButton.hidden = true;
        self.matherobicAppButton.enabled = false;
        self.matherobicAppButton.hidden = true;
        self.myTextView.hidden = false;
    }
    
    
}