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
    
    @IBOutlet var myDescriptionTextView: UITextView!
    @IBOutlet var myNameLabel: UILabel!
    let myNameArray = Array("Hello, my name is Ravin!")
    var myCounter = 0
    var timer:NSTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fireTimer()
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
            UIView.animateWithDuration(1.0, animations: {
                self.myDescriptionTextView.alpha = 1.0
            })
        }
        myCounter++
    }

    

}