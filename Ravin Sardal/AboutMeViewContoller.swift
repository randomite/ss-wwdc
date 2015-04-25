//
//  AboutMeViewContoller.swift
//  Ravin Sardal
//
//  Created by Ravin Sardal on 4/19/15.
//  Copyright (c) 2015 Ravin Sardal. All rights reserved.
//

import Foundation
import UIKit

class AboutMeViewContoller: UIViewController {
    
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var twitterButton: UIButton!
    @IBOutlet var linkedinButton: UIButton!
    @IBOutlet var emailButton: UIButton!
    @IBOutlet var facebookButton: UIButton!
    @IBOutlet var githubButton: UIButton!
    
    
    @IBOutlet var myDescriptionTextView: UITextView!
    @IBOutlet var myNameLabel: UILabel!
    let myNameArray = Array("Hello, my name is Ravin!")
    var myCounter = 0
    var timer:NSTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.setProgress(0.0, animated: false)
        self.twitterButton.enabled = false
        self.linkedinButton.enabled = false
        self.emailButton.enabled = false
        self.facebookButton.enabled = false
        self.githubButton.enabled = false
        
        self.twitterButton.alpha = 0.0
        self.linkedinButton.alpha = 0.0
        self.emailButton.alpha = 0.0
        self.facebookButton.alpha = 0.0
        self.githubButton.alpha = 0.0
        self.fireTimer()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.myDescriptionTextView.alpha = 0;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func fireTimer(){
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: "typeLetter", userInfo: nil, repeats: true)
    }
    func typeLetter(){
        if myCounter < myNameArray.count {
            myNameLabel.text = myNameLabel.text! + String(myNameArray[myCounter])
            let randomInterval = Double((arc4random_uniform(8)+1))/20
            timer?.invalidate()
            timer = NSTimer.scheduledTimerWithTimeInterval(randomInterval, target: self, selector: "typeLetter", userInfo: nil, repeats: false)
        } else {
            timer?.invalidate()
            startChangeProfileDescriptions()
        }
        myCounter++
    }

    override func prefersStatusBarHidden() -> Bool {
        return true;
    }
    
    func startChangeProfileDescriptions(){
        UIView.animateWithDuration(9.0, animations: {
            self.myDescriptionTextView.alpha = 1.0
            self.progressBar.setProgress(0.25, animated: true)
            },completion:{ finished in
                if finished{
                    UIView.animateWithDuration(1.0, animations: {
                        self.myDescriptionTextView.alpha = 0.0
                        },completion:{ finished in
                            if finished{
                                UIView.animateWithDuration(10.0, animations: {
                                    self.myDescriptionTextView.text = "This summer I will be interning at Ford Motor Company in the iOS Developement division and will be working on Apple Watch apps for cars."
                                    self.progressBar.setProgress(0.5, animated: true)
                                    self.myDescriptionTextView.alpha = 1.0
                                    },completion:{ finished in
                                        if finished{
                                            UIView.animateWithDuration(1.0, animations: {
                                                self.myDescriptionTextView.alpha = 0.0
                                                },completion:{ finished in
                                                    if finished{
                                                        UIView.animateWithDuration(9.0, animations: {
                                                            self.myDescriptionTextView.text = "Skills:\n\niOS (Objective-C and Swift)\nNode.JS\nJava\nC/C++"
                                                            self.progressBar.setProgress(0.75, animated: true)
                                                            self.myDescriptionTextView.alpha = 1.0
                                                            },completion:{ finished in
                                                                if finished{
                                                                    UIView.animateWithDuration(1.0, animations: {
                                                                        self.myDescriptionTextView.alpha = 0.0
                                                                        },completion:{ finished in
                                                                            if finished{
                                                                                self.progressBar.setProgress(1.0, animated: true)
                                                                                UIView.animateWithDuration(1.0, animations: {
                                                                                    self.twitterButton.enabled = true
                                                                                    self.linkedinButton.enabled = true
                                                                                    self.emailButton.enabled = true
                                                                                    self.facebookButton.enabled = true
                                                                                    self.githubButton.enabled = true
                                                                                    self.twitterButton.alpha = 1.0
                                                                                    self.linkedinButton.alpha = 1.0
                                                                                    self.emailButton.alpha = 1.0
                                                                                    self.facebookButton.alpha = 1.0
                                                                                    self.githubButton.alpha = 1.0
                                                                                })
                                                                            }
                                                                    })
                                                                }
                                                        })
                                                    }
                                            })
                                        }
                                })
                            }
                    })
                }
        })
    }
    
    @IBAction func openTwitterProfile(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://twitter.com/ravinz25")!)
    }
    
    @IBAction func openLinkedinProfile(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://www.linkedin.com/pub/ravin-sardal/62/a0/27b")!)
    }
    
    @IBAction func openGithubProfile(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://github.com/randomite")!)
    }
    
    @IBAction func openMailTo(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "mailto:ravin.sardal@gmail.com?subject=Wanted%20to%20contact%20you%20from%20your%20WWDC%20App")!)
    }
    
    @IBAction func openFacebookProfile(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://www.facebook.com/ravin.sardal")!)
    }
    
    
    

}