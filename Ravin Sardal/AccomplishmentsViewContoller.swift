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
        
        self.myTextView.text = "While attending Homestead High School, I participated in technology competitions with the Future Business Leaders of America club. I placed first in the Database Design and Applications event at the California state competition and went on to the National competition."
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
            self.myTextView.text = "This summer I will intern at Ford Motor Company in the iOS Development division and will be working on Apple Watch apps for vehicles. I am beyond excited for the opportunity to impact the lives of a plethora of drivers."
        }else if(row == 3){
            self.hideButtonsShowText()
            self.myTextView.text = "I have developed various Pebble SmartWatch Applications for the Pebble SmartWatch that have thousands of users each. One example is ________, which serves the purpose to __________."
        }else if(row == 4){
            self.hideButtonsShowText()
            self.myTextView.text = "I maintain a YouTube channel in which I make tutorials for users to learn Apple WatchKit development and am proud that this channel has over 25,000 views and a few hundred subscribers. A friend of mine started watching my videos and is now working on his own Watch app. It feels incredible to know that I have inspired someone to innovate."
        }else if(row == 5){
            self.hideButtonsShowText()
            self.myTextView.text = "Coding is my passion. One way I like to indulge in this obsession is participating in hackathons. I have won many hackathons such as __________."
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