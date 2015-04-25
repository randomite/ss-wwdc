//
//  ProfileViewController.swift
//  Ravin Sardal
//
//  Created by Ravin Sardal on 4/18/15.
//  Copyright (c) 2015 Ravin Sardal. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var scroller: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.sharedApplication().statusBarHidden = true
        // Do any additional setup after loading the view, typically from a nib.
        self.scroller.userInteractionEnabled = true;
        self.scroller.contentSize = CGSizeMake(375, 400)
        //ProfileViewController.backgroundColor = UIColor(patternImage:UIImage(named: "backing.jpg"))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    
    
}