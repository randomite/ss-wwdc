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
    
    var goToX = 112
    var goToY = 362
    var count = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.vcTextView.alpha = 0.0;
        self.titleLabel.alpha = 0.0;
        self.titleLabel.text = "";
        self.helpLabel.text = "Click Any Icon!!";
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
                            self.vcTextView.text = " As famous Silicon Valley Venture Capitalist Marc Andreesen says, Software is eating the world. Not only is Software Engineering my major, it is first and foremost my passion. My interests in the software realm include server side development, web applications, mobile applications, wearables, and the internet of things. (Entire Full-Stack for Rescue Me App-includes: ios app, pebble app, website, backend web services, database management. Matherobic iOS app, and backend web service for content refreshment. Developed 7 Pebble apps with thousand of users. I have also contributed to open source projects including MongoDB, and PebbleJS.)"
                            self.vcTextView.alpha = 1.0;
                            self.titleLabel.text = "Software"
                            self.titleLabel.alpha = 1.0
                            self.helpLabel.text = "Press Icon to Dismiss!"
                        })
                    }
            })
            count++
        }else if(count == 1){
            count = 0
            UIView.animateWithDuration(1.5, animations: {
                self.titleLabel.alpha = 0.0
                self.vcTextView.alpha = 0.0
                self.businessIconButton.alpha = 1.0
                self.cpuIconButton.alpha = 1.0
                self.codeIconButton.frame.origin = CGPoint(x: 112, y: 114)
                self.helpLabel.text = "Click Any Icon!!";
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
                            self.vcTextView.text = "I am very much interested in business. I took part in my high schools Future Business Leaders of America club all for 3 years, and I went to nationals last year. I would some day like to start my own tech company. "
                            self.vcTextView.alpha = 1.0;
                            self.titleLabel.text = "Business"
                            self.titleLabel.alpha = 1.0
                            self.helpLabel.text = "Press Icon to Dismiss!"
                        })
                    }
            })
            count++
        }else if(count == 1){
            count = 0
            UIView.animateWithDuration(1.5, animations: {
                self.titleLabel.alpha = 0.0
                self.vcTextView.alpha = 0.0
                self.codeIconButton.alpha = 1.0
                self.cpuIconButton.alpha = 1.0
                self.businessIconButton.frame.origin = CGPoint(x: 16, y: 302)
                self.helpLabel.text = "Click Any Icon!!"
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
                            self.vcTextView.text = "Software is nothing without hardware. I beleive it is imperative for hardware to run optimally and effectively with software. In order to delve in to this interest, I tinker with Raspberry Pi, Arduino, as well as my own circuitry. I love creating intuitive software around these hardware projects to help make something better. One example of this is (I made a home automation project in which I connected a RaspberryPi and Sparkcore to my garage door. And I made an iOS and Pebble Watch app to control open and close the door.)"
                            self.vcTextView.alpha = 1.0
                            self.titleLabel.text = "Hardware"
                            self.titleLabel.alpha = 1.0
                            self.helpLabel.text = "Press Icon to Dismiss!"
                        })
                    }
            })
            count++
        }else if(count == 1){
            count = 0
            UIView.animateWithDuration(1.5, animations: {
                self.titleLabel.alpha = 0.0
                self.vcTextView.alpha = 0.0
                self.codeIconButton.alpha = 1.0
                self.businessIconButton.alpha = 1.0
                self.cpuIconButton.frame.origin = CGPoint(x: 209, y: 302)
                self.helpLabel.text = "Click Any Icon!!"
            })
            
        }
    }
}
