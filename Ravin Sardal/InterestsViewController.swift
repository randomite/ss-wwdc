//
//  InterestsViewController.swift
//  Ravin Sardal
//
//  Created by Ravin Sardal on 4/19/15.
//  Copyright (c) 2015 Ravin Sardal. All rights reserved.
//

import Foundation
import UIKit

class InterestsViewController: UIViewController {
    
    @IBOutlet var codeIconButton: UIButton!
    @IBOutlet var businessIconButton: UIButton!
    @IBOutlet var vcTextView: UITextView!
    @IBOutlet var cpuIconButton: UIButton!
    @IBOutlet var helpLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var secondHelpLabel: UILabel!
    
    var goToX = 112
    var goToY = 362
    var count = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.vcTextView.alpha = 0.0;
        self.titleLabel.alpha = 0.0;
        self.titleLabel.text = "";
        self.helpLabel.text = "Tap any Icon";
        secondHelpLabel.alpha = 0.0
        UIApplication.sharedApplication().statusBarHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func codeIconInfoDisplay(sender: AnyObject) {
        if(count == 0){
            UIView.animateWithDuration(1.5, animations: {
                self.codeIconButton.frame.origin = CGPoint(x: self.goToX, y: self.goToY)
                self.businessIconButton.alpha = 0.0
                self.cpuIconButton.alpha = 0.0

                },completion:{finished in
                    if(finished){
                        UIView.animateWithDuration(0.75 , animations: {
                            self.vcTextView.text = " As famous Silicon Valley Venture Capitalist Marc Andreesen says, \"Software is eating the world.\" Not only is Software Engineering my major, it is first and foremost my passion. My interests in the software realm include server side development, web applications, mobile applications, wearables, and the internet of things. For my Resuce Me app, I employed full-stack development by creating an iOS app, a Pebble Watch app, website with backend web services, and database management. I have also developed 7 Pebble Watch apps that have thousands of users."
                            self.vcTextView.alpha = 1.0;
                            self.titleLabel.text = "Software"
                            self.titleLabel.alpha = 1.0
                            self.helpLabel.text = "Tap Icon to Dismiss"
                            self.secondHelpLabel.alpha = 1.0
                        })
                    }
            })
            count++
        }else if(count == 1){
            count = 0
            UIView.animateWithDuration(1.5, animations: {
                self.titleLabel.alpha = 0.0
                self.secondHelpLabel.alpha = 0.0
                self.vcTextView.alpha = 0.0
                self.businessIconButton.alpha = 1.0
                self.cpuIconButton.alpha = 1.0
                self.codeIconButton.frame.origin = CGPoint(x: 112, y: 114)
                self.helpLabel.text = "Tap any Icon";
            })
            
        }
    }
   
    @IBAction func businessIconInfoDisplay(sender: AnyObject) {
        if(count == 0){
            UIView.animateWithDuration(1.5, animations: {
                self.businessIconButton.frame.origin = CGPoint(x: self.goToX, y: self.goToY)
                self.codeIconButton.alpha = 0.0
                self.cpuIconButton.alpha = 0.0
                },completion:{ finished in
                    if(finished){
                        UIView.animateWithDuration(0.75, animations: {
                            self.vcTextView.text = "Business and Technology are two critical components in forming a technology venture, something that I someday wish to do. In order to launch a successful company, I must first learn how business work. One way I like to do this is by monitoring stocks, especially Apple's. In order to build my business knowledge I understand it is important to learn from the experience others, something I did in high school in the Future Business Leaders of America club. I enjoyed listening to speakers and attending state and national level conferences."
                            self.vcTextView.alpha = 1.0;
                            self.titleLabel.text = "Business"
                            self.titleLabel.alpha = 1.0
                            self.helpLabel.text = "Tap Icon to Dismiss"
                            self.secondHelpLabel.alpha = 1.0
                        })
                    }
            })
            count++
        }else if(count == 1){
            count = 0
            UIView.animateWithDuration(1.5, animations: {
                self.secondHelpLabel.alpha = 0.0
                self.titleLabel.alpha = 0.0
                self.vcTextView.alpha = 0.0
                self.codeIconButton.alpha = 1.0
                self.cpuIconButton.alpha = 1.0
                self.businessIconButton.frame.origin = CGPoint(x: 16, y: 302)
                self.helpLabel.text = "Tap any Icon"
            })
            
        }
    }
    
    
    @IBAction func cpuIconInfoDisplay(sender: AnyObject) {
        if(count == 0){
            UIView.animateWithDuration(1.5, animations: {
                self.cpuIconButton.frame.origin = CGPoint(x: self.goToX, y: self.goToY)
                self.codeIconButton.alpha = 0.0
                self.businessIconButton.alpha = 0.0
                },completion:{finished in
                    if(finished){
                        UIView.animateWithDuration(0.75, animations: {
                            self.vcTextView.text = "Software is nothing without hardware and I beleive it is imperative for hardware to run optimally and effectively with software. In order to venture in to this interest, I tinker with Raspberry Pi, Arduino, as well as my own circuitry. I love creating intuitive software around these hardware projects to help make something better. One example of this is my home automation project in which I connected a Raspberry Pi and Sparkcore to my garage door. To connect the hardware to software, I made an iOS and Pebble Watch app to open and close the door as well."
                            self.vcTextView.alpha = 1.0
                            self.titleLabel.text = "Hardware"
                            self.titleLabel.alpha = 1.0
                            self.helpLabel.text = "Tap Icon to Dismiss"
                            self.secondHelpLabel.alpha = 1.0
                        })
                    }
            })
            count++
        }else if(count == 1){
            count = 0
            UIView.animateWithDuration(1.5, animations: {
                self.secondHelpLabel.alpha = 0.0
                self.titleLabel.alpha = 0.0
                self.vcTextView.alpha = 0.0
                self.codeIconButton.alpha = 1.0
                self.businessIconButton.alpha = 1.0
                self.cpuIconButton.frame.origin = CGPoint(x: 209, y: 302)
                self.helpLabel.text = "Tap any Icon"
            })
            
        }
    }
}
