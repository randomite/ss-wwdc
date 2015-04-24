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
            },completion:{ finished in
                if finished{
                    UIView.animateWithDuration(1.0, animations: {
                        self.myDescriptionTextView.alpha = 0.0
                        },completion:{ finished in
                            if finished{
                                UIView.animateWithDuration(9.0, animations: {
                                    self.myDescriptionTextView.text = "This summer I will be interning at Ford Motor Company in the iOS Developement division and will be working on Apple Watch apps for cars."
                                    self.myDescriptionTextView.alpha = 1.0
                                    },completion:{ finished in
                                        if finished{
                                            UIView.animateWithDuration(1.0, animations: {
                                                self.myDescriptionTextView.alpha = 0.0
                                                },completion:{ finished in
                                                    if finished{
                                                        UIView.animateWithDuration(9.0, animations: {
                                                            self.myDescriptionTextView.text = "I am familar with the following languages and frameworks:\n\niOS (Objective-C and Swift)\nNode.JS\nJava\nC/C++"
                                                            self.myDescriptionTextView.alpha = 1.0
                                                            },completion:{ finished in
                                                                if finished{
                                                                    UIView.animateWithDuration(1.0, animations: {
                                                                        self.myDescriptionTextView.alpha = 0.0
                                                                        },completion:{ finished in
                                                                            if finished{
                                                                                UIView.animateWithDuration(1.0, animations: {
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
    
    
    

}