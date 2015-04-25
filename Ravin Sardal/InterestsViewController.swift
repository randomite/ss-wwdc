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
    
    var goToX = 112
    var goToY = 362
    var count = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.vcTextView.alpha = 0.0;

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
                            self.vcTextView.text = " As famous Silicon Valley Venture Capitalist Marc Andreesen says, Software is eating the world. Not only is Software Engineering my major, it is first and foremost my passion. My interests in the software realm include server side development, web applications, mobile applications, wearables, and the internet of things. (INSERT THINGS YOU HAVE DONE WITH EACH THING HERE. I WILL REPHRASE."
                            self.vcTextView.alpha = 1.0;
                        })
                    }
            })
            count++
        }else if(count == 1){
            count = 0
            UIView.animateWithDuration(1.5, animations: {
                self.vcTextView.alpha = 0.0
                self.businessIconButton.alpha = 1.0
                self.cpuIconButton.alpha = 1.0
                self.codeIconButton.frame.origin = CGPoint(x: 112, y: 114)
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
                            self.vcTextView.text = ""
                            self.vcTextView.alpha = 1.0;
                        })
                    }
            })
            count++
        }else if(count == 1){
            count = 0
            UIView.animateWithDuration(1.5, animations: {
                self.vcTextView.alpha = 0.0
                self.codeIconButton.alpha = 1.0
                self.cpuIconButton.alpha = 1.0
                self.businessIconButton.frame.origin = CGPoint(x: 16, y: 302)
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
                            self.vcTextView.text = "Software is nothing without hardware. I beleive it is imperative for hardware to run optimally and effectively with software. In order to delve in to this interest, I tinker with Raspberry Pi, Arduino, as well as my own circuitry. I love creating intuitive software around these hardware projects to help make something better. One example of this is (INSERT RASPBERRY PI GARAGE DOOR EXAMPLE HERE)"
                            self.vcTextView.alpha = 1.0
                        })
                    }
            })
            count++
        }else if(count == 1){
            count = 0
            UIView.animateWithDuration(1.5, animations: {
                self.vcTextView.alpha = 0.0
                self.codeIconButton.alpha = 1.0
                self.businessIconButton.alpha = 1.0
                self.cpuIconButton.frame.origin = CGPoint(x: 209, y: 302)
            })
            
        }
    }
}
