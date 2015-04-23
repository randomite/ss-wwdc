//
//  ConferenceViewController.swift
//  Ravin Sardal
//
//  Created by Ravin Sardal on 4/19/15.
//  Copyright (c) 2015 Ravin Sardal. All rights reserved.
//

import Foundation
import UIKit

class ConferenceViewController: UIViewController {
    
    @IBOutlet var scoller: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.scoller.userInteractionEnabled = true;
        self.scoller.contentSize = CGSizeMake(375, 400)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}